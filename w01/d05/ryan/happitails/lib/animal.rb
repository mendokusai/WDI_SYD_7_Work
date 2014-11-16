#animal.rb

module KennelApp
	class Animal
		attr_accessor :name, :age, :gender, :species, :toys

		def initialize(name, age, gender, species, toys)
			self.name = name
			self.age = age
			self.gender = gender
			self.species = species
			self.toys = toys
		end

		def to_s
			"\tAnimal:\n" +
			"\t Name: #{self.name}\n" +
			"\t Age: #{self.age}\n" +
			"\t Gender: #{self.gender}\n" +
			"\t Species: #{self.species}\n" +
			"\t Toys: #{self.toys}\n"
		end
	end
end