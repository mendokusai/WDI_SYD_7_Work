#blocks.rb

people = ["Jack", "Wolf", "Bilbo Baggins"]

people.each {|person| puts person.upcase}

max_loop_number = people.length
counter = 1

while counter <= max_loop_number
	counter += 1
end

empty = []
students = ["frodo baggins", "samwise gamgee", "peregrin took", "meriad gonad"]
cap_students = students.map do |student|
	empty << student.capitalize
end

splits = students.map do |student| 
	student.split(" ").map {|name_part| 
		name_part.capitalize}.join(" ")
end

p splits

# .map creates a new array

numbers = (1..100).map do |number|
	x = number * 10
	y = x - x / 2
	y * 1.5
end

# puts numbers

tweets = []
tweets.map do |tweet|
	tweet.gsub("cloud", "butt")
end

5.upto(10) do |x|
	p x
end

10.downto(2.2) do |x|
	p x
end

