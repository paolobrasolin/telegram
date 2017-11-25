# frozen_string_literal: true

# This script loads the normalized data and ...

require 'yaml'
require 'json'
require 'nokogiri'
require 'active_support/inflector'
require 'active_support/core_ext/hash'

################################################################################

print 'Loading data... '

# Load normalized data.

api_types = JSON.parse(
  File.open(File.join(__dir__, 'data', 'types.normalized.json')).read
).map(&:deep_symbolize_keys)

api_methods = JSON.parse(
  File.open(File.join(__dir__, 'data', 'methods.normalized.json')).read
).map(&:deep_symbolize_keys)

# Match and isolate type names w/ special meaning.

API_TYPES_NAMES = api_types.map { |a| a[:name] }.freeze

puts 'Done.'

################################################################################

def mark_signature_if_optional(signature, is_optional)
  return signature unless is_optional
  [signature, 'nil'].join(', ')
end

def type_to_caster(type, is_optional)
  caster =
    case type
    when 'String'
      ->(x) { "#{x}&.to_s" }
    when 'Integer'
      ->(x) { "#{x}&.to_i" }
    when 'Float'
      ->(x) { "#{x}&.to_f" }
    when 'Boolean', 'TrueClass'
      is_optional = true
      ->(x) { "!!#{x}" }
    when /^Array<Array<(?<type>.*)>>$/
      type = Regexp.last_match[:type]
      ->(x) { "#{x}&.to_a&.map { |a| a.to_a.map { |o| #{type_to_caster(type, false).call('o')} } }" }
    when /^Array<(?<type>.*)>$/
      type = Regexp.last_match[:type]
      ->(x) { "#{x}&.to_a&.map { |o| #{type_to_caster(type, false).call('o')} }" }
    when *API_TYPES_NAMES, 'CallbackGame', 'InputMessageContent'
      ->(x) { "Types::#{type}.new(**#{x}.to_h)" }
    else
      warn "Unhandled caster for type: '#{type}'"
      ->(x) { "#{x}" }
    end
  return caster unless is_optional
  ->(x) { "(#{caster.call(x)} unless #{x}.nil?)" }
end

################################################################################

def parse_type_attributes(attributes)
  attributes.map do |attribute|
    snake_name = ActiveSupport::Inflector.underscore(attribute[:name])
    {
      snake_name: snake_name,
      optional: attribute[:optional],
      signature: mark_signature_if_optional(attribute[:signature], attribute[:optional]),
      caster: type_to_caster(attribute[:signature], attribute[:optional]).call(snake_name)
    }
  end
end

print 'Prerendering types... '
api_types.map! do |type|
  {
    url: type[:url],
    snake_name: ActiveSupport::Inflector.underscore(type[:name]),
    pascal_name: ActiveSupport::Inflector.camelize(type[:name], true),
    attributes: parse_type_attributes(type[:attributes])
  }
end
puts 'Done.'

print 'Dumping types to file... '
file_path = File.join __dir__, 'data', 'types.prerendered.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_types) }
puts "Saved to #{file_path}"

################################################################################

def parse_method_parameters(parameters)
  parameters.map do |parameter|
    snake_name = ActiveSupport::Inflector.underscore(parameter[:name])
    {
      snake_name: snake_name,
      required: parameter[:required],
      signature: mark_signature_if_optional(parameter[:signature], !parameter[:required]),
      caster: type_to_caster(parameter[:signature], !parameter[:required]).call(snake_name)
    }
  end
end

print 'Prerendering methods... '
api_methods.map! do |method|
  result_caster = [
    '->(r) {',
    type_to_caster(method[:result_signature], false).call('r'),
    '}'
  ].join(' ')
  {
    url: method[:url],
    snake_name: ActiveSupport::Inflector.underscore(method[:name]),
    camel_name: ActiveSupport::Inflector.camelize(method[:name], false),
    pascal_name: ActiveSupport::Inflector.camelize(method[:name], true),
    parameters: parse_method_parameters(method[:parameters]),
    result_caster: result_caster
  }
end
puts 'Done.'

print 'Dumping methods to file... '
file_path = File.join __dir__, 'data', 'methods.prerendered.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_methods) }
puts "Saved to #{file_path}"

