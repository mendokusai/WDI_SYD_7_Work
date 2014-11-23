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

exist(s)?(file_name)

gsub is a good method to clean up data to remove destructive elements.


File.unlink > deletes file

JSON.generate(collection)

can copy json details to file

make JSON string
send json string to file

then get json string and pull out details

Things we've covered:

variables
methods
classes
hashes
arrays
hashes v arrays
sinatra
html
css

css box model
html forms
the web
	request/response
	headers
	methods
	status codes
reference material
pry
debugging w/pry
reading error messages


the_db.txt => JSON PARSE ERROR


git tak with lucy bain . com

if you want to work on things (exp things) do it on the side via a branch

when ready to complete, merge branch into master

do it early


noun project

tools: git apps


clone is the original fetch
fetch grabs changes since you last did it.

tinyurl.com/ruby-rules


homework
files + sinatra + forms

page loads from files
file info displays
form