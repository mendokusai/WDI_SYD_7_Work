#shelter.rb

module KennelApp
	class Shelter
		attr_accessor :clients, :animals
		def initialize(clients, animals)
			self.clients = clients
			self.animals = animals
			#puts "Hello YOUS Animals!"
			initial_display

		end

		def display_record(record_array, animalORclient)
			counter = 0
			record_array.each do |record|
				puts "#{animalORclient} Number: #{counter}", "\n", record, "\n"
				counter += 1
			end
		end

		def client_options
			puts "\n\tClients\n\n\nPlease choose one of the following:"
			puts "\n(N)ew Client  |  (M)ake an adoption!  \n\n\n(S)earch Client Roster  |  (R)eturn to the main menu"
			selection = gets.strip.downcase
			case selection[0]
			when "n"
				add_client # => done!
			when "m"
				start_adoption # => make_adoption # => done!
			when"s"
				display_record(clients, "Client") # => done!
			when "r"
				initial_display # => done!
			else
				put "That selection is not a valid option."
				client_options
			end
		end


		def animal_options
			puts `clear`
			puts "\n\tAnimals\n\n\nPlease choose one of the following:"
			puts "\n(A)dopt an animal  |  (S)earch for a new pet  |  \n\n\n(X) Add animal to the shelter  |  (R)eturn to the main menu"
			selection = gets.strip.downcase
			case selection[0]
			when "a"
				start_adoption # => make_adoption # => done!
			when "s"
				display_record(animals, "Animal") # => done!
			when "x"
				warning # warning => add_animals # => done! 
			when "r"
				initial_display # => done!
			else
				put "That selection is not a valid option."
				animal_options
			end
		end

		def initial_display
			puts `clear`
			puts "\n\n\t\tWelcome to Happi Tails!\n\nWhere YOU are the difference between a sad tail and a HAPPI TAIL!"
			puts "\n\n\n\n\tPlease choose one of our options:\n\n\n\t(A) Animal Options, (C) Client Options  |  (Q)uit"	

			response = gets.strip.downcase

			while response != "q"
				case response
				when "a"
					animal_options
				when "c"
					client_options
				else
					puts "That menu choice doesn't exist."
				end
				response = gets.strip
			end
		end

		def warning
			puts "Are you sure you want to bring an animal to the shelter?"
			print "\n\nPress (X) to return to the main menu or (C) to continue."
			continue = gets.strip.downcase
			case continue[0]
			when "x"
				initial_display
			when "c"
				add_animals
			else
				initial_display
			end
		end

		def add_animals
			puts `clear`
			print "\n\nPlease enter the animal's name: "
			name = gets.strip.capitalize
			print "\n\nPlease enter the animal's age: "
			age = gets.strip.to_i
			print "\n\nPlease enter the animal's gender: "
			gender = gets.strip.downcase
			print "\n\nPlease enter the species: "
			species = gets.strip.downcase
			print "\n\nHow many toys does the animal have: "
			toys = gets.strip.to_i

			new_animal = Animal.new(name, age, gender, species, toys)
			animals.push(new_animal)

			puts "\n\nHappi Tails hopes to find a new home for #{name} soon."
			gets
			initial_display
		end


		def add_client
			puts `clear`
			puts "\tNew Clients\n\n\nWelcome to Happi Tails! Please enter your details to be added to our system."
			gets

			print "\n\nFirst Name: "
			first_name = gets.strip.capitalize
			print "\n\nLast Name: "
			last_name = gets.strip.capitalize
			print "\n\nPlease enter the number of your children: "
			children = gets.strip.to_i
			print "\n\nWhat is your age? "
			age = gets.strip.to_i
			print "\n\nHow many pets do you care for? "
			pets = gets.strip.to_i

			name = first_name + " " + last_name
 			new_client = Client.new(name, children, age, pets)
 			clients.push(new_client)

 			print "\n\n\nThank you for joining Happi Tails!\n\n\nPlease press any key to return to the main menu."
 			gets
 			initial_display
		end

		def start_adoption
			puts `clear`
			puts "\n\nWe're so happy you want to adopt a new member into your family!"
			print "\n\nDo you know the ANIMAL NUMBER for your new friend? Y/N "
			selection = gets.strip.downcase
			case selection
			when "y"
				make_adoption
			when "n"
				print "\n\nYou will need a valid Client Number AND a valid Animal Number. Please search Happi Tails records for both and return (soon!)"
				animal_options
			else
				"Please make a valid selection."
				gets
				start_adoption
			end
		end

		def make_adoption
			#binding.pry
			print "\nPlease enter Client Number: "
			client_number = gets.strip.to_i
			print "\nPlease enter Animal Number: "
			animal_number = gets.strip.to_i

			puts "\n\nCongratulations! You've adopted #{animals[animal_number].name}!"
			adopted_animal = animals.slice!(animal_number)
			puts "\n\nWe have updated your client records to reflect your new details."
			
			clients[client_number].pets = clients[client_number].pets + 1
			print "\n\nPress any key to continue. "
			gets
			initial_display
		end
	end
end