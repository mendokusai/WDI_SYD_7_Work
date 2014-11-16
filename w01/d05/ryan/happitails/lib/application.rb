#application.rb

require "pry"

require_relative "animal"
require_relative "client"
require_relative "shelter"

module KennelApp
	class Application
		def start
			#puts "\n\nHello Animals!" # => ends up at the very end of the file!
		end

		animal_records = [
			animal01 = Animal.new("Poochy", 5, "male", "canine", 0),
			animal02 = Animal.new("Meow Face", 12, "female", "feline", 1),
			animal03 = Animal.new("Captain Petey", 20, "female", "bird", 0),
			animal04 = Animal.new("Rusty Joe", 1, "male", "canine", 2)
		]


		client_records = [
			client01 = Client.new("Juniper May", 56, 0, 2),
			client02 = Client.new("Tommy Walters", 24, 0, 4),
			client03 = Client.new("Barbara Jo Jones", 72, 5, 0),
			client04 = Client.new("Sammy the Crab", 15, 1, 1)
		]
		
		happi_tails = Shelter.new(client_records, animal_records)
		
		# def display_records(record_array)
		# 	all_records.each do |single_record|
		# 		puts single_record
		# 	end
		# end

		



	end
end

#binding.pry