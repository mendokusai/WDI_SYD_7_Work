#mta.rb

#require pry

subway = {
	"n_line" => ["times square", "34th", "28th", "23rd", "union square", "8th"],
	"l_line" => ["8th", "6th", "union square", "3rd", "1st"],
	"six_line" => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]
}
def find_line(subway, line)
line = subway[line]
return line
end



def find_position(location, line_array, subway)
 position = line_array.index(location)

 return position
end

def union_square_location(subway)
	location = "union square"
	#n_line
	n_line_uc = find_line(subway, "n_line")
	n_union = find_position(location, n_line_uc, subway)
	#l_line
	l_line_uc = find_line(subway, "l_line")
	l_union = find_position(location, l_line_uc, subway)
	#six_line
	six_line_uc = find_line(subway, "six_line")
	six_union = find_position(location, six_line_uc, subway)
	n_l_six_union_loc = [n_union, l_union, six_union]
	return n_l_six_union_loc
end

#start
line_1 = "n_line"
location_1 = "28th"
line1_array = find_line(subway, line_1) #returns the line array


#end
line_2 = "l_line"
location_2 = "8th"
line2_array = find_line(subway, line_2)


p position_1 = find_position(location_1, line_1, subway); 
p position_2 = find_position(location_2, line_2, subway)

p union_sq_location_Arr = union_square_location(subway)



# p line_array #shows line array
# p position_1 #shows index of station on line

#def find_line_from_position(location, subway)
#end

#p subway.keys # returns lines

#p subway.keys[0] # => prints "n_line"

def return_location(location, line)
	

end
