#apartment.rb

class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_bath

	def initilaize(price, is_occupied, sqft, num_beds, num_bath)
	end

	def to_s
		"Apartment: \n" +
		" Price: #{price}\n" + 
		" Is occupied: #{is_occupied}\n" +
		" Square feet: #{sqft}\n" +
		" Number of Bedrooms: #{num_beds}\n" +
		" Number of Bathrooms: #{num_bath}\n"
	end
end