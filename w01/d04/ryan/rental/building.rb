#building.rb

class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	attr_reader :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
		self.address = address
		self.style = style
		self.has_doorman = has_doorman
		self.is_walkup = is_walkup
		self.num_floors = num_floors
		self.apartments = apartments
	end

	def show_address
		return address
	end

	def show_style
		return style
	end

	def show_doorman
		return has_doorman
	end

	def show_is_walkup
		return is_walkup
	end

	def show_num_floors
		return num_floors
	end

	def show_apts
		return apartments
	end

	def print
		puts "This is the listing for #{self.address}:"
		puts "Style: #{self.style}"
		puts "Has Doorman: #{self.has_doorman}"
		puts "Is it a walkup? #{self.is_walkup}"
		puts "Number of floors: #{self.num_floors}"
		puts "Total number of apartments: #{self.apartments.length}"
																					#apartments.length
	end

end