require "json"

#1 check if file exists
unless File.exists? 'the_db.txt'
	File.open('the_db.txt', 'a+').close
else
	the_file = File.open('the_db.txt', 'r').read
	puts JSON(the_file) rescue []
end

#step 5 print the db


#step 2 get names
print "Name a student (or press 'q' when finished): "

name = gets.strip

if File.exists? 'the_db.txt'
	the_file = File.open('the_db.txt', 'r').read
	student_names = JSON(the_file) rescue []
else
	student_names = []
end

while  name != 'q'
	student_names << name
	name = gets.strip
end

#step 3 convert to json
student_json = JSON.generate(student_names)
puts student_json

#step 4 save json

File.open('the_db.txt', 'w+') do |add|
	add.write(student_json) #"\n" 
end
#parse does puts (translates file to string)

the_file = File.open('the_db.txt', 'r').read
puts JSON(the_file)

