# app to manage rentals

require 'pry'

require_relative "building"
require_relative "apartments"
require_relative "people"

#"algoals"
#from
# => i'm looking for a house
# => i have a lease signed

#neighborhoods
	#city center
	#midtown
	#out of town

#buildings
	# => big apartment block
	# => duplex
	# => garage apartment(stand alone)


#apartments
	# => available apt
	# => non-available apt
	# => rooms
	# => rental house

#persons
	# => owners
	# => tenants
	# => prospective tenants

#how to apply | search

#persons
first = ["John", "Susan", "Marty", "Mourice", "Taylor", "Frank", "Michael", "Steven", "Sarah", "Tommy", "Kato"]
last = ["Smith", "Stewart", "Bond", "Chapman", "Hasegawa", "Hutchenson", "Michaelson", "King", "Lammington", "Chen", "Abbot", "Shorten", "Arrington", "Bothen", "Cooper", "Dirkson", "Pagalion", "Webster", "Zeno", "Gough", "Edloe", "Eno", "Simard"]

addresses = ["53 York Street", "10 Kent Street", "401 Elizabeth Street", "20 Park Avenue", "23 Bourke Street", "333 Darlinghurst Road", "120 Mackey Road", "57 Yurumba Boulevard", "81 Banambila Street", "12 Ogden Lane"]



def random_name_gen(first, last, number)
	count = 0
	array = []
	while count < number do
		f_name = (rand * first.length).to_i
		first_name = first[f_name]
		l_name = (rand * last.length).to_i
		last_name = last[l_name]
		person = first_name + " " + last_name
		array.push(person)
		count += 1
	end
	return array
end


def create_rental(first, last, address, entries)
	array = []
	counter = 0
	while counter < entries do
		num_beds = (rand * 3).to_i
		unless num_beds == 1
			num_baths = num_beds - 1
		else
			num_baths = 1
		end
		sqft = ((rand * (num_beds + num_baths)) * 100).to_i
		is_occupied = num_beds % 2 == 0 ? true : false
		price = (sqft * 65).abs
		renter = random_name_gen(first, last, 1)
		apt = Apartment.new(address, price, is_occupied, sqft, num_beds, num_baths, renter[0])
		array.push(apt)
		counter += 1
	end
	return array
end
	
	
c53_york_renters = create_rental(first, last, addresses[0], 40)
c10_kent_renters = create_rental(first, last, addresses[1], 25)
r401_elizabeth_renters = create_rental(first, last, addresses[2], 40)
r20_park_renters = create_rental(first, last, addresses[3], 35)
r23_bourke_renters = create_rental(first, last, addresses[4], 12)
r333_darlinghurst_renters = create_rental(first, last, addresses[5], 6)
r120_mackey_renters = create_rental(first, last, addresses[6], 4)
r57_yurumba_renters = create_rental(first, last, addresses[7], 1)
r81_banambila_renters = create_rental(first, last, addresses[8], 1)
r12_ogden_renters = create_rental(first, last, addresses[9],2)



def list_properties(array)
	array.each do |entry|
		p entry
	end
end

# york_listings = list_properties(c53_york_renters)
# kent_listings = list_properties(r10_kent_renters)
# elizabeth_listings = list_properties(r401_elizabeth_renters)
# park_listings = list_properties(r20_park_renters)
# bourke_listings = list_properties(r23_bourke_renters)
# darlinghurst_listings = list_properties(r333_darlinghurst_renters)
# mackey_listings = list_properties(r120_mackey_renters)
# yurumba_listings = list_properties(r57_yurumba_renters)
# banambila_listings = list_properties(r81_banambila_renters)
# ogden_listings = list_properties(r12_ogden_renters)


ryan_pauley = Person.new("Ryan Pauley", 33, "M", "401 Elizabeth")
milena_badger = Person.new("Milena Badger", 32, "F", "401 Elizabeth")

test = random_name_gen(first, last, 20)
random_age = (20..80).to_a.sample


#apartment listings



#buildings:

#med comm build
c53_york = Building.new("53 York Street", "Commercial", false, false, 15, c53_york_renters)
c10_kent = Building.new("10 Kent Street", "Commercial", true, false, 10, c10_kent_renters)

#big res apt
r401_elizabeth = Building.new("401 Elizabeth Street", "Residential", true, false, 5, r401_elizabeth_renters)
r20_park = Building.new("20 Park Avenue", "Residential", true, false, 25, r20_park_renters)

#small res apt
r23_bourke = Building.new("23 Bourke Street", "Residential", false, true, 2, r23_bourke_renters)
r333_darlinghurst = Building.new("333 Darlinghurst Road", "Residential", true, false, 4, r333_darlinghurst_renters)
#small house
r120_mackey = Building.new("120 Mackey Road", "Residential", false, false, 1, r120_mackey_renters)
r57_yurumba = Building.new("57 Yurumba Boulevard", "Residential", false, false, 2, r57_yurumba_renters)
r81_banambila = Building.new("81 Banambila Street", "Residential", false, false, 1, r81_banambila_renters)
r12_ogden = Building.new("12 Ogden Lane", "Residential", false, false, 2, r12_ogden_renters)



binding.pry
