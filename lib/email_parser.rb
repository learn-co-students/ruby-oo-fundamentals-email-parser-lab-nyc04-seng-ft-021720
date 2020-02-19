# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# require 'pry'

class EmailAddressParser
	def initialize(email_string)
		@email_string = email_string
	end
	def parse
		# split by spaces
		split1 = @email_string.split()

		# split by commas
		split2 = []
		split1.each do |address|
			
			split2.push(address.split(','))
		end
		
		# decompose the 2-layer array into a single layer
		split3 = []
		split2.each do |set1|
			set1.each do |email|
				split3.push(email)
			end
		end
		
		# Filter for uniques
		unique = split3.uniq
		# remove any empty values / blanks
		output = unique.select { |e| !e.empty? }

		output
	end
end

# my_parser = EmailAddressParser.new('a b c, d ,e,e, e e e,f,g ')
# binding.pry
