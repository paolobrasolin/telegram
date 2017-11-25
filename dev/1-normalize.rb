# frozen_string_literal: true

# This script loads the fetched data and ...

require 'yaml'
require 'json'
require 'nokogiri'
require 'active_support/inflector'
require 'active_support/core_ext/hash'

print 'Loading data... '

# Load fetched data.

api_types = JSON.parse(
  File.open(File.join(__dir__, 'data', 'types.fetched.json')).read
).map(&:deep_symbolize_keys)

api_methods = JSON.parse(
  File.open(File.join(__dir__, 'data', 'methods.fetched.json')).read
).map(&:deep_symbolize_keys)

# Load hand written result types for methods.

METHODS_RESULT_TYPE = YAML.safe_load(
  File.open(File.join(__dir__, 'data', 'methods.result_type.yaml'))
)

# Match and isolate type names w/ special meaning.

API_TYPES_NAMES = api_types.map { |a| a[:name] }.freeze
IMC_TYPES = API_TYPES_NAMES.select { |t| t[/^Input[a-zA-Z0-9]+MessageContent$/] }.freeze
IQR_TYPES = API_TYPES_NAMES.select { |t| t[/^InlineQueryResult[a-zA-Z0-9]+$/] }.freeze

puts 'Done.'

################################################################################

def type_to_signature(type)
  case type
  when 'True'
    'TrueClass'
  when 'Int', 'Integer'
    'Integer'
  when 'Float', 'Float number'
    'Float'
  when 'Boolean', 'String'
    type
  when /^(?<type>\S*) or (?<remainder>.*)$/
    type = Regexp.last_match[:type]
    remainder = Regexp.last_match[:remainder]
    "#{type}, #{type_to_signature(remainder)}"
  when /^Array of (?<remainder>.*)$$/
    remainder = Regexp.last_match[:remainder]
    "Array<#{type_to_signature(remainder)}>"
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
    raise "Don't know how to convert this type to a signature: '#{type}'"
  end
end

################################################################################

def parse_type_attributes(attributes)
  attributes.map do |attribute|
    snake_name = ActiveSupport::Inflector.underscore(attribute[:name])
    raise "Unexpected case for attribute #{attribute[:name]}." unless attribute[:name] == snake_name

    description = Nokogiri::HTML.fragment attribute[:description]
    optional = !!(description.content =~ /^Optional./)
    {
      name: snake_name,
      optional: optional,
      signature: type_to_signature(attribute[:type])
    }
  end
end

print 'Normalizing types... '
api_types.map! do |type|
  pascal_name = ActiveSupport::Inflector.camelize(type[:name], true)
  raise "Unexpected case for type #{type[:name]}." unless type[:name] == pascal_name
  {
    url: type[:url],
    name: pascal_name,
    attributes: parse_type_attributes(type[:attributes]),
    # description: ''
  }
end
puts 'Done.'

print 'Dumping types to file... '
file_path = File.join __dir__, 'data', 'types.normalized.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_types) }
puts "Saved to #{file_path}"

################################################################################

def parse_method_parameters(parameters)
  parameters.map do |parameter|
    snake_name = ActiveSupport::Inflector.underscore(parameter[:name])
    raise "Unexpected case for parameter #{parameter[:name]}." unless parameter[:name] == snake_name

    required = !!(parameter[:required] =~ /^Yes\b/) # TODO: raise
    {
      name: snake_name,
      required: required,
      signature: type_to_signature(parameter[:type])
    }
  end
end

print 'Normalizing methods... '
api_methods.map! do |method|
  camel_name = ActiveSupport::Inflector.camelize(method[:name], false)

  raise "Unexpected case for method #{method[:name]}." unless method[:name] == camel_name
  {
    url: method[:url],
    name: camel_name,
    parameters: parse_method_parameters(method[:parameters]),
    result_signature: type_to_signature(METHODS_RESULT_TYPE[camel_name])
  }
end
puts 'Done.'

print 'Dumping methods to file... '
file_path = File.join __dir__, 'data', 'methods.normalized.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_methods) }
puts "Saved to #{file_path}"

################################################################################
