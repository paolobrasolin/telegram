# coding: utf-8

require 'json'
require 'fileutils'
require 'active_support/core_ext/hash'

require 'liquid'

################################################################################

print 'Loading data... '

# Load prerendered data.

api_types = JSON.parse(
  File.open(File.join(__dir__, 'data', 'types.prerendered.json')).read
).map(&:deep_symbolize_keys)

api_methods = JSON.parse(
  File.open(File.join(__dir__, 'data', 'methods.prerendered.json')).read
).map(&:deep_symbolize_keys)

puts 'Done.'

################################################################################

print 'Rendering types... '

$types_dir = File.join __dir__, '..', *%w[gen telegram api bot types]
FileUtils.mkdir_p $types_dir
$type_template = Liquid::Template.parse File.read(File.join __dir__, 'templates', 'type.rb.liquid')

def render_type(type)
  file_dir = $types_dir
  FileUtils.mkdir_p file_dir
  file_name = type[:snake_name] + '.rb'
  file_path = File.join file_dir, file_name

  File.open(file_path, 'w') do |file|
    output = $type_template.render 'type' => type.deep_stringify_keys
    file.write output
  end
end

api_types.each do |type|
  render_type type
end

puts 'Done.'

################################################################################

print 'Rendering types... '

$methods_dir = File.join __dir__, '..', *%w[gen telegram api bot methods]
FileUtils.mkdir_p $methods_dir
$method_template = Liquid::Template.parse File.read(File.join __dir__, 'templates', 'method.rb.liquid')

def generate_method(method)
  file_dir = $methods_dir
  FileUtils.mkdir_p file_dir
  file_name = method[:snake_name] + '.rb'
  file_path = File.join file_dir, file_name

  File.open(file_path, 'w') do |file|
    output = $method_template.render 'method' => method.deep_stringify_keys
    file.write output
  end
end

api_methods.each do |method|
  generate_method method
end

puts 'Done.'
