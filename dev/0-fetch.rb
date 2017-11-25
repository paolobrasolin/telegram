# frozen_string_literal: true

# This script fetches the Bot API documentation, roughly parses it
# and restructures it into an easily consumable YAML file.

require 'nokogiri'
require 'open-uri'
require 'yaml'
require 'json'

# Fetch and parse the Bot API documentation webpage.

print 'Fetching Bot API documentation webpage... '
API_DOC_URL = 'https://core.telegram.org/bots/api'
api_doc_dom = Nokogiri::HTML open(API_DOC_URL)
api_doc_dom.encoding = 'UTF-8'
puts "Downloaded #{api_doc_dom.to_html.size} bytes."

# Extract the sections beginning with an H4 from #def_page_content.
# The result is an array of tag arrays.

print 'Extracting H4 sections... '
is_gathering = false
sections = []
api_doc_dom.xpath("//div[@id='dev_page_content']/*").each do |tag|
  case tag.name
  when 'h4'
    is_gathering = true
    sections << [tag]
  when 'h3'
    is_gathering = false
  else
    sections.last << tag if is_gathering
  end
end
puts "Found #{sections.count} sections."

# Preprocess tag lists to ease classification.

print 'Preprocess extracted sections... '
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
puts 'Done.'

# Classify the sections we found.

skipped_sections = []
types_sections = []
methods_sections = []
discarded_sections = []

TYPES_BLACKLIST = %w[InputMessageContent InlineQueryResult
                     CallbackGame InputFile].freeze
TYPES_REGEXP = /^[A-Z][a-zA-Z0-9]+$/

METHODS_BLACKLIST = %w[].freeze
METHODS_REGEXP = /^[a-z][a-zA-Z0-9]+$/

print "Classifying #{sections.count} sections... "

sections.each do |section|
  case section[:title]
  when *(TYPES_BLACKLIST + METHODS_BLACKLIST)
    skipped_sections << section
  when TYPES_REGEXP
    types_sections << section
  when METHODS_REGEXP
    methods_sections << section
  else
    discarded_sections << section
  end
end
puts 'Done! Dumping results to console:'

# Print out the result.

def entab(array, indent: 4)
  width = array.map(&:length).max + indent
  fitting_cols = (`tput cols`.to_i - indent).fdiv(width).floor
  rows = array.count.fdiv(fitting_cols).ceil
  tab = array.sort.each_slice(rows).to_a
  tab[0].zip(*tab[1..-1]). # <- tricky: this equalizes row sizes
    map { |r| r.map { |c| c.to_s.ljust width }.join.prepend(' ' * indent) }.
    join "\n"
end

puts <<~MESSAGE
  \n#{skipped_sections.count.to_s.rjust(3)} SKIPPED:\n\n#{entab(skipped_sections.map { |s| s[:title] })}
  \n#{types_sections.count.to_s.rjust(3)} TYPES:\n\n#{entab(types_sections.map { |s| s[:title] })}
  \n#{methods_sections.count.to_s.rjust(3)} METHODS:\n\n#{entab(methods_sections.map { |s| s[:title] })}
  \n#{discarded_sections.count.to_s.rjust(3)} DISCARDED:\n\n#{entab(discarded_sections.map { |s| s[:title] })}

MESSAGE

# Minimally clean up and validate types, then dump them.

def parse_type_table(table)
  # Check the header cells are the three expected ones.
  header_cells_contents = table.xpath('./tbody/tr[1]/td').map(&:content)
  raise <<~MESSAGE unless header_cells_contents == %w[Field Type Description]
    Unexpected type table headers: #{header_cells_contents}
  MESSAGE

  # Fetch data cells content discarding the header ones.
  data_cells = table.xpath('./tbody/tr/td')[3..-1]

  data_cells.each_slice(3).to_a.map do |field_cell, type_cell, description_cell|
    {
      name: field_cell.content,
      type: type_cell.content,
      description: description_cell.to_html
    }
  end
end

api_types = []

types_sections.each do |section|
  api_types << {
    url: API_DOC_URL + section[:html][:header].at('a').attr('href'),
    name: section[:title],
    attributes: section[:html][:table].nil? ? [] : parse_type_table(section[:html][:table]),
    description: section[:html][:contents].map(&:to_html).join
  }
end

print 'Dumping types to file... '
file_path = File.join __dir__, 'data', 'types.fetched.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_types) }
puts "Saved to #{file_path}"

# Minimally clean up and validate methods, then dump them.

def parse_method_table(table)
  # Check the header cells are the four expected ones.
  header_cells_contents = table.xpath('./tbody/tr[1]/td').map(&:content)
  raise <<~MESSAGE unless header_cells_contents == %w[Parameters Type Required Description]
    Unexpected method table headers: #{header_cells_contents}
  MESSAGE

  # Fetch data cells content discarding the header ones.
  data_cells = table.xpath('./tbody/tr/td')[4..-1]

  data_cells.each_slice(4).to_a.
    map do |parameters_cell, type_cell, required_cell, description_cell|
    {
      name: parameters_cell.content,
      type: type_cell.content,
      required: required_cell.content,
      description: description_cell.to_html
    }
  end
end

api_methods = []

methods_sections.each do |section|
  api_methods << {
    url: API_DOC_URL + section[:html][:header].at('a').attr('href'),
    name: section[:title],
    parameters: section[:html][:table].nil? ? [] : parse_method_table(section[:html][:table]),
    description: section[:html][:contents].map(&:to_html).join
  }
end

print 'Dumping methods to file... '
file_path = File.join __dir__, 'data', 'methods.fetched.json'
File.open(file_path, 'w') { |file| file.write JSON.pretty_generate(api_methods) }
puts "Saved to #{file_path}"
