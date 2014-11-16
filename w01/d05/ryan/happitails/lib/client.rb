#client.rb

module KennelApp
	class Client
		attr_accessor :name, :children, :age, :pets

		def initialize(name, children, age, pets)
			self.name = name
			self.children = children
			self.age = age
			self.pets = pets
		end

		def to_s
			"\tClient Record:\n" +
			"\t Name: #{self.name}\n" +
			"\t Age: #{self.age}\n" +
			"\t Children: #{self.children}\n" +
			"\t Pets: #{self.pets}\n"
		end
	end
end