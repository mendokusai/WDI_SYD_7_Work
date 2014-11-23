#classes.rb

class Car
	#attribute accessor - defines attributes
	attr_accessor :color, :make, :model, :year, :top_speed, :seating_material, :seat_number
	
	#class method
	def print
		puts "This is the car:"
		puts "Color: #{self.color}"
		puts "Make: #{self.make}"
		puts "Model: #{self.model}"
		puts "Year: #{self.year}"
		puts "Number of seats: #{seat_number}"
		puts "Top Speed: #{self.top_speed}"
	end


end

class Person
	attr_accessor :first_name, :last_nanem, :email, :address
end

jagE = Car.new

jagE.color = "Green"
jagE.make = "Jaguar"
jagE.model = "E-Type"
jagE.year = 1959
jagE.top_speed = 241
jagE.seat_number: 2

# def print_car(the_car)	print method ^^ moved into class
# 	puts "This is the car:"
# 	puts "Color: #{the_car.color}"
# 	puts "Make: #{the_car.make}"
# 	puts "Model: #{the_car.model}"
# 	puts "Year: #{the_car.year}"
# 	puts "Top Speed: #{the_car.top_speed}"
# end

#print_car(jagE)

#jagE.print

mini = Car.new

mini.color = "Red"
mini.make = "Mini Cooper"
mini.model = "Mini"
mini.year = 1954
mini.top_speed = 95
mini.seat_number = 4

civic = Car.new

civic.color = "Silver"
civic.make = "Honda"
civic.model = "Civic EX"s
civic.year = 2002
civic.top_speed = 140
civic.seat_number = 5

class Truck < Car
	attr_accessor :bed_size, :torque

	def print
		super
		puts "Bed Size: #{self.bed_size}}"
		puts "Torque: #{self.torque}"
	end

end

eff150 = Truck.new

eff150.color = "Blue"
eff150.make = "Ford"
eff150.model = "F-150"
eff150.year = 1950
eff150.top_speed = 170
eff150.seat_number = 2
eff150.bed_size = "10 ft"
eff150.torque = 40

eff150.print