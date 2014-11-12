#mta2.rb

require 'rainbow'

subway = {
	"n_line" => ["times square", "34th", "28th", "23rd", "union square", "8th"],
	"l_line" => ["8th", "6th", "union square", "3rd", "1st"],
	"six_line" => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]
}

def get_input(subway, startORend)
	puts "\n\n\t\tPlease choose a #{startORend} station: \n\n"
	lines = ["n_line", "l_line", "six_line"]
	choices = lines.map do |line|
		subway[line]
	end
	choices = choices.flatten.uniq
	choices.each do |station|
		print Rainbow("(#{station})").white, " Station | "
	end
	location = gets.strip.downcase
	check_line(location)
	return location
end

def get_line(location, subway)
	if subway["n_line"].index(location)
		return "n_line"
	elsif subway["l_line"].index(location)
		return "l_line"
	elsif subway["six_line"].index(location)
		return "six_line"
	else
		return "You have not entered a valid subway line."
	end
end

def get_position(location, line, subway)
	subway_route = subway[line]
	position = subway_route.index(location)
	position_array = [line, position]
	return position_array
end

def check_line(location)
	if location == "28th" || location == "23th"
		puts "Which subway line do you want to get at #{location} street?"
		puts "(N) line | (6) line"
		line = gets.chomp.downcase
		if line[0] == "n"
			return "n_line"
		elsif line[0] == "6"
			return "six_line"
		else
			puts "please enter a valid line\n."
		end
	elsif location == "8th"
		puts "Which subway line do you want to get at #{location} street?"
		puts "(N) line | (L) line"
		line = gets.chomp.downcase
		if line[0] == "n"
			return "n_line"
		elsif line[0] == "l"
			return "l_line"
		else
			puts "please enter a valid line\n."
		end
	end
end

def connection(start_arr, end_arr, subway)
	unless start_arr[0] == end_arr[0]
		#figure out route to grand central
		to_station = subway[start_arr[0]].index("union square")
		from_station = subway[end_arr[0]].index("union square")
		stops = (to_station - start_arr[1]).abs + (from_station - end_arr[1]).abs
		return stops
	else
		#location_1 to location_2 on same line
		stops = end_arr[1] - start_arr[1]
		if stops < 0
			stops = start_arr[1] - end_arr[1]
		end
		return stops
	end
end

def endgame(start_arr, end_arr, subway, stops)
	start = subway[start_arr[0]][start_arr[1]]
	end_ = subway[end_arr[0]][end_arr[1]]
	if stops <= 3
		description = "only a short ride to go "
	elsif stops >= 5
		description = "a rather long time to go "
	end
	print Rainbow("\n\n\n\n\n\tIt takes #{description}#{stops} stops from #{start} to #{end_}.\n\n\n").yellow
	print Rainbow("\tThank you for riding with the MTA\n\n").red
end

def welcome
	puts `clear`
	print Rainbow("\n\n\n\n\t\tWelcome to the New York City \n\n\tMetro Transit Authority (MTA) Trip Planner").yellow
	gets
end

welcome

start = get_input(subway, "starting")
ending = get_input(subway, "ending")

start_line = get_line(start, subway)
end_line = get_line(ending, subway)

# [ line, position]
start_position_arr = get_position(start, start_line, subway)
end_position_arr = get_position(ending, end_line, subway)

stops = connection(start_position_arr, end_position_arr, subway)
endgame(start_position_arr, end_position_arr, subway, stops)
