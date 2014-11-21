#########D05##########

morning exercise
files
survey
~~~lunch~~~
git talk
review - hashes, debugging, arrays
weekend project: 

##########################

Files

the_story = File.new('story.txt')

the_story.read
=> "There once was a class at GA\nThey sat there coding all day\n"


puts the_story.read

There once was a class at GA
They sat there coding all day
=> nil

do it again...

puts the_story.read

=> nil

manual IO read

the_story.write("Testing")
IOError: not opened for writing

manual IO mode: new(fd [, mode] [, opt]) → io

'atomic file saving' saves to a temp file first

we'll use a+  {information can write to file as well as read file.}

the_story = File.new('story.txt', 'a+') 

file.close {closes the file!} data cannot be acessed until closed.

default state is read-only.

file.rewind {goes back to begining of the file}


Open

File.open('database.txt', 'a+') do |databse|
database.write('texttext')
database.write("hello")
end

good for loops, though you still need to check File.open into another method

write_2_file(message, file)
	File.open(file, 'a+') do |instance|
		instance.write(message)
	end
end

file exists? t/f

exists?(file_name)