# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
   attr_accessor :emails
    
  def initialize(emails)
    @emails = emails
  end
    
  def parse
    emails_without_commas = emails.gsub(","," ")
    emails_split = emails_without_commas.split
    unique_emails = emails_split.uniq 
  end

end



