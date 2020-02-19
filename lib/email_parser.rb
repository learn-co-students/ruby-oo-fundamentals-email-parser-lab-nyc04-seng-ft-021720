# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    attr_accessor :email_addresses
def initialize (emails)
    @email_addresses = emails
end
    def parse 
        if @email_addresses.include? ", " 
            @email_addresses.delete!(",")
            @email_addresses.split(",").uniq
            
            
        end
        if @email_addresses.include? " "
            @email_addresses.split(" ").uniq
        end
   end
end