#madlib.rb

print "Do you want to write a new madlib? Y/N "
start_again = gets.strip.downcase

if start_again[0] == "y"
	if File.exists? 'madlib.txt'
		File.unlink('madlib.txt')
	end
end

unless File.exists? 'madlib.txt'
	file = File.new('madlib.txt', 'a+')
	file.close
	puts "New file created, bro."
	gets



	print "What is your friend's name? "
	friends_name = gets.strip.capitalize
	print "Write a type of moving: "
	moving = gets.strip
	print "What do you call a group of horses? "
	group_of_horses = gets.strip
	print "Write a past-tense action:"
	past_tense_action = gets.strip
	print "Write an action(infinitive): "
	action_infinitive = gets.strip
	print "Choose a body_part: "
	body_part = gets.strip
	gets
	
	story = "One day #{friends_name} was #{moving} down the street. #{friends_name} walked into a #{group_of_horses} gangmembers. They #{past_tense_action} before #{friends_name} before #{action_infinitive} your friend in the #{body_part}."

	print story

	File.open('madlib.txt', 'a+') do |add_file|
		add_file.write(friends_name + "\n")
		add_file.write(moving + "\n")
		add_file.write(group_of_horses + "\n")
		add_file.write(past_tense_action + "\n")
		add_file.write(action_infinitive + "\n")
		add_file.write(body_part + "\n")
	end

else 
	puts "You got that file already, bro. (Do you even lift?)"
	file = File.new('madlib.txt', 'r')
	puts file.read
end
