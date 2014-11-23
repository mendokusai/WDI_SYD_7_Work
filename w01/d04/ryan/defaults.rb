#defaults.rb

# class Printer
# 	def print(page, page_number = 1)
# 		puts "#{page_number}: #{page}"
# 	end

# end

# canon = Printer.new
# canon.print("This is the content of page1")
# canon.print("This is the content of page2", 2)

#defaults

jag_e = Car.new("Green", "Jaguar", "E-Type", 1959. 241)

class Car
	attr_accessor :color, :make, :mode;, :year, :top_speed
	def initialize(color, make, model, year, top_speed = 220) 
									#!color cannot be a default, 
									# 				optional needs to be at the end
		self.color = color
		self.make = make
		self.model = model
		self.year = year
		self.top_speed = top_speed
	end
end
