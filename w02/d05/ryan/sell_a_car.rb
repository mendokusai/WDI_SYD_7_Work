#step 5
print "Do you want to write a car add? Y/N "
start_again = gets.strip.downcase

if start_again[0] == "y"
	if File.exists? 'ad.txt'
		File.unlink('ad.txt')
	end
end

#step 1 make sure we have the file
unless File.exists? 'ad.txt'
	file = File.new('ad.txt', 'a+')
	file.close
	puts "\nCreated file."
	#2 ask questions
print "Number of kilometers? "
number_of_kms = gets.strip.to_i
print "Type of doors? (standard, suicide, gullwing, etc): "
door_type = gets.strip
print "Does it have a sunroof:"
sunroof = gets.strip
print "What kind of engine: "
engine = gets.strip
print "Does it have a flamethrower? "
flames = gets.strip
print "What is the price: "
price = gets.strip.to_i

#step 3 write data to file

File.open('ad.txt', 'a+') do |ad_file|
	ad_file.write("KM: #{number_of_kms}\n")
	ad_file.write("Door Type: #{door_type}\n")
	ad_file.write("Sunroof? #{sunroof}\n")
	ad_file.write("Flamethrower? #{flames}\n")
	ad_file.write("Engine Type: #{engine}\n")
	ad_file.write("Price: #{price}")
end

else
	puts "\nYou got that file already, bro. (do you even lift?)"
	#step 4 display file if already exists.
	file = File.new('ad.txt', 'r')
	puts file.read
end



#4 display file (check out line 8)