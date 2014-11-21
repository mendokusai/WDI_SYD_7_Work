#write_file_check.rb


def write_2_file(message, file)
	File.open(file, 'a+') do |instance|
		instance.write(message)
	end
end
text_file = File.new('txt.txt', 'a+')
text_file.close
write_2_file("Hello World", text_file)