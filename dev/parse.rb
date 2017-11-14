# coding: utf-8
# frozen_string_literal: true

require 'yaml'
require 'nokogiri'
require 'active_support/inflector'

api_types = YAML.load File.open(File.join(__dir__, 'fetched_types.yaml'))
api_methods = YAML.load File.open(File.join(__dir__, 'fetched_methods.yaml'))

API_TYPES_NAMES = api_types.map { |a_t| a_t[:name] }.freeze

IMC_TYPES = API_TYPES_NAMES.select { |t_n| t_n[/^Input[a-zA-Z0-9]+MessageContent$/] }.freeze
IQR_TYPES = API_TYPES_NAMES.select { |t_n| t_n[/^InlineQueryResult[a-zA-Z0-9]+$/] }.freeze

def type_to_signature(type, is_optional)
  signature =
    case type
    when 'True'
      'TrueClass'
    when 'Boolean', 'Integer', 'Float', 'String'
      type
    when 'Float number'
      'Float'
    when /^(?<type>\S*) or (?<remainder>.*)$/
      type = Regexp.last_match[:type]
      remainder = Regexp.last_match[:remainder]
      "#{type}, #{type_to_signature(remainder, false)}"
    when /^Array of (?<remainder>.*)$$/
      remainder = Regexp.last_match[:remainder]
      "Array<#{type_to_signature(remainder, false)}>"
    when 'InlineQueryResult'
      IQR_TYPES.join(', ')
    when 'InputMessageContent'
      IMC_TYPES.join(', ')
    when 'InputFile'
      type
    when 'CallbackGame'
      type
    when *API_TYPES_NAMES
      type
    else
      raise "Unhandled signature for type: '#{type}'"
    end
  return signature unless is_optional
  [signature, 'nil'].join(', ')
end

def type_to_caster(type, is_optional)
  # puts type.inspect
  caster =
    case type
    when 'String'
      ->(x) { "#{x}&.to_s" }
    when 'Integer'
      ->(x) { "#{x}&.to_i" }
    when 'Float number', 'Float'
      ->(x) { "#{x}&.to_f" }
    when 'Boolean', 'True'
      is_optional = true
      ->(x) { "!!#{x}" }
    when /^Array of Array of (?<type>.*)$/
      type = Regexp.last_match[:type]
      ->(x) { "#{x}&.to_a&.map { |a| a.to_a.map { |o| #{type_to_caster(type, false).call('o')} } }" }
    when /^Array of (?<type>.*)$/
      type = Regexp.last_match[:type]
      ->(x) { "#{x}&.to_a&.map { |o| #{type_to_caster(type, false).call('o')} }" }
    when *API_TYPES_NAMES, 'CallbackGame', 'InputMessageContent'
      ->(x) { "#{type}.new(**#{x}.to_h)" }
    else
      raise "Unhandled caster for type: '#{type}'"
    end
  return caster unless is_optional
  ->(x) { "(#{caster.call(x)} unless #{x}.nil?)" }
end

def parse_type_attributes(attributes)
  attributes.map do |attribute|
    snake_name = ActiveSupport::Inflector.underscore(attribute[:name])
    raise "Unexpected case for attribute #{attribute[:name]}." unless attribute[:name] == snake_name

    description = Nokogiri::HTML.fragment attribute[:description]
    optional = !!(description.content =~ /^Optional./)
    {
      snake_name: snake_name,
      optional: optional,
      signature: type_to_signature(attribute[:type], optional),
      caster: type_to_caster(attribute[:type], optional).call(snake_name),
      # description: ''
    }
  end
end

api_types.map! do |type|
  snake_name = ActiveSupport::Inflector.underscore(type[:name])
  pascal_name = ActiveSupport::Inflector.camelize(type[:name], true)
  raise "Unexpected case for type #{type[:name]}." unless type[:name] == pascal_name
  {
    url: type[:url],
    snake_name: snake_name,
    pascal_name: pascal_name,
    attributes: parse_type_attributes(type[:attributes]),
    # description: ''
  }
end

file_path = File.join __dir__, 'parsed_types.yaml'
File.open(file_path, 'w') { |file| file.write api_types.to_yaml }

def parse_method_parameters(parameters)
  parameters.map do |parameter|
    snake_name = ActiveSupport::Inflector.underscore(parameter[:name])
    raise "Unexpected case for parameter #{parameter[:name]}." unless parameter[:name] == snake_name

    description = Nokogiri::HTML.fragment parameter[:description]
    required = !!(parameter[:required] =~ /^Yes\b/) # TODO: raise
    {
      snake_name: snake_name,
      required: required,
      signature: type_to_signature(parameter[:type], !required),
      # description: ''
    }
  end
end

api_methods.map! do |method|
  snake_name = ActiveSupport::Inflector.underscore(method[:name])
  camel_name = ActiveSupport::Inflector.camelize(method[:name], false)
  raise "Unexpected case for method #{method[:name]}." unless method[:name] == camel_name
  {
    url: method[:url],
    snake_name: snake_name,
    camel_name: camel_name,
    parameters: parse_method_parameters(method[:parameters]),
    # description: ''
  }
end

file_path = File.join __dir__, 'parsed_methods.yaml'
File.open(file_path, 'w') { |file| file.write api_methods.to_yaml }

# def parse_description(cell_tag)
#   cell_tag.traverse do |tag|
#     case tag.name
#     when 'a'
#       if tag['href'] =~ /^#(?<target>.*)/
#         # TODO: handle page anchors (links to other methods/types or api doc)
#         tag.replace tag.content
#       elsif tag['href'] =~ /^\/.*/
#         tag.replace "{https://core.telegram.org#{tag['href']} #{tag.content}}"
#       else
#         tag.replace "{#{tag['href']} #{tag.content}}"
#       end
#     when 'strong'
#       tag.replace "*#{tag.content}*"
#     when 'em'
#       tag.replace "_#{tag.content}_"
#     when 'p'
#       tag.replace tag.content
#     when 'blockquote'
#       tag.replace tag.content
#     end
#   end
#   # dd = [] # description.scan(/(.{1,80})(?:\s|$)/m).map { |l| l.first }
#   cell_tag.inner_html.squish
# end
