# coding: utf-8

require 'nokogiri'
require 'open-uri'
require 'yaml'

require 'liquid'

require 'active_support/inflector'
require 'active_support/core_ext/string'
require 'colorize'

KO = '✘'.red
OK = '✔'.green

# Fetch and parse the API documentation.

API_DOC_URL = 'https://core.telegram.org/bots/api'
api_doc_dom = Nokogiri::HTML open(API_DOC_URL)
api_doc_dom.encoding = 'UTF-8'


# Extract the sections beginning with an H4 from #def_page_content.
# The result is an array of tag arrays.

gathering = false
sections = []
api_doc_dom.xpath("//div[@id='dev_page_content']/*").each do |tag|
  case tag.name
  when 'h4'
    gathering = true
    sections << [tag]
  when 'h3'
    gathering = false
  else
    sections.last << tag if gathering
  end
end

# Preprocess tag lists to ease consumption.

sections.map! do |section|
  header = section.shift # safely assumed to be the H4

  table = section.find { |tag| tag.name == 'table' }
  section.delete table unless table.nil?
  raise <<~MESSAGE unless section.find { |tag| tag.name == 'table' }.nil?
    Unexpected multiple tables below #{header.text} section.
  MESSAGE

  {
    title: header.text,
    html: {
      header: header,
      table: table,
      contents: section
    }
  }
end

# Classify sections between methods/types or discard them.

def human_type_to_yard_signature(type)
  case type
  when %w{String Boolean Integer}
    type
  when 'Float number'
    'Float'
  when /^Array of Array of (?<type>.*)$/
    "Array<Array<#{Regexp.last_match[:type]}>>"
  when /^Array of (?<type>.*)$$/
    "Array<#{Regexp.last_match[:type]}>"
  else
    type
  end
end

def parse_description(cell_tag)
  cell_tag.traverse do |tag|
    case tag.name
    when 'a'
      if tag['href'] =~ /^#(?<target>.*)/
        # TODO: handle page anchors (links to other methods/types or api doc)
        tag.replace tag.content
      elsif tag['href'] =~ /^\/.*/
        tag.replace "{https://core.telegram.org#{tag['href']} #{tag.content}}"
      else
        tag.replace "{#{tag['href']} #{tag.content}}"
      end
    when 'strong'
      tag.replace "*#{tag.content}*"
    when 'em'
      tag.replace "_#{tag.content}_"
    when 'p'
      tag.replace tag.content
    when 'blockquote'
      tag.replace tag.content
    end
  end
  # dd = [] # description.scan(/(.{1,80})(?:\s|$)/m).map { |l| l.first }
  cell_tag.inner_html.squish
end

def parse_type_table(table)
  # Check the header cells are the three expected ones.
  header_cells_contents = table.xpath('./tbody/tr[1]/td').map(&:content)
  raise <<~MESSAGE unless header_cells_contents == %w{Field Type Description}
    Unexpected type table headers: #{header_cells_contents}
  MESSAGE

  # Fetch data cells content discarding the header ones.
  data_cells = table.xpath('./tbody/tr/td')[3..-1]

  attributes = []
  data_cells.each_slice(3) do |field_cell, type_cell, description_cell|
    # puts description_cell
    keys = %w[name type description optional]
    values = [
      field_cell.content,
      human_type_to_yard_signature(type_cell.content),
      parse_description(description_cell),
      !!(description_cell.content =~ /^Optional./)
    ]
    attributes << keys.zip(values).to_h
  end
  attributes
end

def parse_method_table(table)
  # Check the header cells are the four expected ones.
  header_cells_contents = table.xpath('./tbody/tr[1]/td').map(&:content)
  raise <<~MESSAGE unless header_cells_contents == %w{Parameters Type Required Description}
    Unexpected type table headers: #{header_cells_contents}
  MESSAGE

  # Fetch data cells content discarding the header ones.
  data_cells = table.xpath('./tbody/tr/td')[4..-1]

  attributes = []
  data_cells.each_slice(4) do |parameters_cell, type_cell, required_cell, description_cell|
    keys = %w[name type required description]
    values = [
      parameters_cell.content,
      human_type_to_yard_signature(type_cell.content),
      !!(required_cell.content =~ /^Yes\b/),
      parse_description(description_cell)
    ]
    attributes << keys.zip(values).to_h
  end
  attributes
end

api_types = []
api_methods = []

sections.each do |section|
  name = section[:title]
  has_table = !section[:html][:table].nil?
  if name =~ /^[A-Z][a-zA-Z0-9]+$/
    puts "T #{has_table ? OK : KO} #{name.green}"

    parent = nil
    parent = 'InputMessageContent' if name =~ /^Input[a-zA-Z0-9]+MessageContent$/
    parent = 'InlineQueryResult' if name =~ /^InlineQueryResult[a-zA-Z0-9]+$/

    attributes = has_table ? parse_type_table(section[:html][:table]) : []

    api_types << {
      name: name,
      parent: parent,
      attributes: attributes,
      description: section[:html][:contents].map { |t| parse_description t }
    }
  elsif name =~ /^[a-z][a-zA-Z0-9]+$/
    puts "M #{has_table ? OK : KO} #{name}"

    parameters = has_table ? parse_method_table(section[:html][:table]) : []

    api_methods << {
      name: name,
      parameters: parameters,
      description: section[:html][:contents].map { |t| parse_description t }
    }
  else
    warn "? #{has_table ? OK : KO} #{name.red}"
  end
end


$types_dir = File.join __dir__, '..', *%w[gen telegram api bot types]
FileUtils.mkdir_p $types_dir
$type_template = Liquid::Template.parse File.read(File.join __dir__, 'templates', 'type.rb.liquid')

def generate_type(type)
  serialized = {
    'name' => type[:name],
    'parent' => type[:parent],
    'fields' => type[:attributes],
    'description' => type[:description]
  }

  file_dir = File.join(*[$types_dir, type[:parent]&.underscore].compact)
  FileUtils.mkdir_p file_dir
  file_name = serialized['name'].underscore + '.rb'
  file_path = File.join file_dir, file_name

  File.open(file_path, 'w') do |file|
    output = $type_template.render 'type' => serialized
    file.write output
  end
end

# api_types.each do |type|
#   generate_type type
# end


$methods_dir = File.join __dir__, '..', *%w[gen telegram api bot methods]
FileUtils.mkdir_p $methods_dir
$method_template = Liquid::Template.parse File.read(File.join __dir__, 'templates', 'method.rb.liquid')

def generate_method(method)
  serialized = {
    'name' => method[:name].underscore,
    'parameters' => method[:parameters],
    'description' => method[:description]
  }

  file_dir = File.join(*[$methods_dir, method[:parent]&.underscore].compact)
  FileUtils.mkdir_p file_dir
  file_name = serialized['name'].underscore + '.rb'
  file_path = File.join file_dir, file_name

  File.open(file_path, 'w') do |file|
    output = $method_template.render 'method' => serialized
    file.write output
  end
end

api_methods.each do |method|
  generate_method method
end

file_path = File.join __dir__, '..', *%w[gen telegram api bot gen_methods.rb]
File.open(file_path, 'w') do |file|
  api_methods.each do |method|
    method_file_path = File.join *%w[telegram api bot methods], method[:name].underscore
    file.write <<~REQUIRE_DIRECTIVE
      require '#{method_file_path}'
    REQUIRE_DIRECTIVE
  end
end
