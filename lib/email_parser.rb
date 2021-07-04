# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :addresses
  def initialize(list)
    @list = list
  end
 
  def parse
    list_no_commas = @list.gsub(",", " ")
    new_list = list_no_commas.split(" ")
    new_list.uniq
  end 
end
