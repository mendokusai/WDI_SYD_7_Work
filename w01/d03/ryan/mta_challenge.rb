#mta_challenge.rb

# N-line: 
# Times Square, 34, 28, 23, Union Square, 8th
# L-line
# 6-Line

subway = {
	n_line: [:ntime_square, :n34th, :n28th, :n23rd, :union_square, :n8th],
	l_line: [:l8th, :l6th, :union_square, :l3rd, :l1st],
	six_line: [:sgrand_central, :s33rd, :s28th, :s23rd, :sunion_square, :sastor_place]

}

def temp_station_start(subway)
	which_line = subway[:n_line]
	#p which_line
	which_station = Hash[which_line.map.with_index.to_a]
	which_station[:n28th]
end

def temp_station_end(subway)
	which_line = subway[:n_line]
	#p which_line
	which_station = Hash[which_line.map.with_index.to_a]
	which_station[:n8th]
end

def start_station(subway)
	puts "What station are you starting from? "
	start_station = gets.chomp.downcase
	case start_station
	when "time square"
		start_sym = :ntime_square
		line = :n_line
	when "34th" || "34"
		start_sym = :n34th
		line = :n_line
	when "28th" || "28"
		print "Do you mean the (N)-line or the (6)-line? "
		line_input = gets.chomp.downcase[0]
		if line_input == "n"
			start_sym = :n28th
			line = :n_line
		elsif line_input == "6"
			start_sym = :s28th
			line = :six_line
		else
			puts "Please choose (N)-line or (6)-line."
			start_station(subway)
		end
	when "23rd" || "23"
		print "Do you mean the (N)-line or the (6)-line? "
		line_input = gets.chomp.downcase[0]
		if line_input == "n"
			start_sym = :n23rd
			line = :n_line
		elsif line_input == "6"
			start_sym = :s23rd
			line = :six_line
		else
			puts "Please choose (N)-line or (6)-line."
			start_station(subway)
		end
	when "union square" || "union"
		start_sym = :union_square
		line = :n_line #later add in the END line here?
	when "8th" || "8"
		print "Do you mean the (N)-line or the (L)-line? "
		line_input = gets.chomp.downcase[0]
		if line_input == "n"
			start_sym = :n8th
			line = :n_line
		elsif line_input == "l"
			start_sym = :l8th
			line = :l_line
		else
			puts "Please choose (N)-line or (L)-line."
			start_station(subway)
		end
	when "6th" || "6"
		start_sym = :l6th
		line = :l_line
	when "3rd" || "3"
		start_sym = :l3rd
		line = :l_line
	when "1st" || "1"
		start_sym = :l1st
		line = :l_line
	when "grand central" || "grand"
		start_sym = :sgrand_central
		line = :six_line
	when "33rd" || "33"
		start_sym = :s33rd
		line = :six_line
	when "astor place" || "astor"
		start_sym = :sastor_place
		line = :six_line
	end

	which_line = subway[line]
	p which_line
	which_station = Hash[which_line.map.with_index.to_a]
	p which_station[start_sym]

end


def connections
end



#ending station 
def end_station
end

# end line
def end_line
end

#how many stops

def stop_counter
end


#start_station(subway)
puts temp_station_start(subway)
puts temp_station_end(subway)