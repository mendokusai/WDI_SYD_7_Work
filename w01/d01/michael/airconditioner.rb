

puts "What is the current temperature?"
temperature = gets.strip.to_i

puts "What temperature would you prefer?"
new_temperature = gets.strip.to_i

puts "Is the AC functional? (Y or N)"
ac_status = gets.strip

if (temperature > new_temperature && ac_status.capitalize == "Y")
puts "Turn the Air con on Please"

elsif (temperature > new_temperature && ac_status.capitalize == "N")
	puts "Fix the Air con now it's hot!!"

else 
Puts "Fix the Air con now it's cold!!"


end


