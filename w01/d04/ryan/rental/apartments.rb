#apartments.rb

require_relative "building"

class Apartment
	attr_accessor :address, :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

	def initialize(address, price, is_occupied, sqft, num_beds, num_baths, renters)
		self.address = address
		self.price = price
		self.is_occupied = is_occupied
		self.sqft = sqft
		self.num_beds = num_beds
		self.num_baths = num_baths
		self.renters = renters
	end

	def show_address
		return self.address
	end

	def show_price
		return self.price
	end

	def show_is_occupied
		return self.is_occupied
	end

	def show_sqft
		return sqft
	end

	def show_num_beds
		return num_beds
	end

	def show_num_baths
		return num_baths
	end

	def show_renters
		return renters
	end


	def print
		puts "This is the listing for #{self.address}"
		puts "Rent: #{self.price}"
		puts "Vacant? #{self.is_occupied}"
		puts "Square Feet: #{self.sqft}"
		puts "Bedrooms: #{self.num_beds}"
		puts "Bathrooms: #{self.num_baths}"
		puts "Tenants: #{self.renters}"
	end

	def show(datum)
		puts "#{self.datum}"
	end
end