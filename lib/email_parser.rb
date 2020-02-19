class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails.gsub!(',','')
    emails1 = emails.split
    emails1.uniq
  end
end

