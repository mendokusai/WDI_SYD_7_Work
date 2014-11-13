
 #hashes are individual data-things 
 # arrays are better for collections of things

 #attributes = description

 #methods = abilities

 #have many?
 #have one
 #belong to
require_relative "building"
require_relative "apartment"

building_one_apartments = [
	Apartment.new(250, true, 400, 1, 1),
	Apartment.new(500, false, 1000, 3, 2),
	Apartment.new(300, false, 200, 1, 1),
	Apartment.new(250, true, 400, 2, 1)
]

building_two_apartments = [
	Apartment.new(250, true, 400, 1, 1),
	Apartment.new(500, false, 1000, 3, 2),
	Apartment.new(300, false, 200, 1, 1),
	Apartment.new(250, true, 400, 2, 1)
]

buildings = [
	Building.new("123 Fake Street, Fake Town", "Victorian", true, true, 5, building_one_apartments),
	Building.new("456 Imaginary Street, Fake Town", "Brownstone", true, false, 3, building_two_apartments)

]

# puts ryan

# def my_puts(value)
# 	if value.is_a?(Array)
# 		value.each do |x|
# 			print x.to_s
# 		end
# 	else
# 		p.value.to_s
# 	end
# end

# my_puts(buildings)

def list_buildings(buildings)
 	buildings.each do |place|
		puts "#{buildings.index(place)}: #{place}"
	end
end

def list_apartments(buildings)
	buildings.each do |building|
		building.apartments.each do |apartment|
			#puts "#{building.apartments.index(apartment)}: #{apartment}"
			puts apartment
		end
	end
end


puts "(q)quit, (lb)listing buildings"

response = gets.strip

while response != "q"
	case response
	when "lb"
		list_buildings(buildings)
		response = ""
	when "q"
		response = "q"
	else
		puts "That menu selection is invalid."
	end
end