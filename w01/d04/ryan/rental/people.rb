#people.rb

class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		self.name = name
		self.age = age
		self.gender = gender
		self.apartment = apartment
	end

	def print
		puts "Details for #{self.name}:"
		puts "Apartment: #{self.apartment}"
		puts "Age: #{self.age}"
		puts "Gender: #{self.gender}"
	end

	def show_name
		return name
	end

	def show_age
		return age
	end

	def show_gender
		return gender
	end

	def show_apartment
		return apartment
	end


end