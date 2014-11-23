require "sinatra"
require "sinatra/reloader"
require "json"
require "pry"
 
# Leave these methods alone!
 
# This method makes sure the file has been created (properly)
def setup_file
  unless File.exists?('link_db.txt')
    File.open('link_db.txt', 'a+') do |link_database|
      link_database.write("[]")
    end
  end
end
 
# This method takes a hash and saves it to a file
def save(link_hash)
  setup_file
  
  link_database = File.open('link_db.txt').read
  existing_links = JSON.parse(link_database)
  # link_database.close
  
  existing_links << link_hash
  link_json = JSON.generate(existing_links)
  
  File.open('link_db.txt', 'w+') do |link_database|
    link_database.write(link_json)
  end
end
 
# This method gets all the links out of the file and returns them
def all
  setup_file
  
  links_data = File.open('link_db.txt').read
  links = JSON.parse(links_data)
  
  return links
end
 
# Only change stuff below this line
 
get '/' do
	@load_links = all
  erb :mainapp # will also show the list
end
 
get '/tasks/new' do
  erb :form
end
 
post '/tasks' do

	@name = params[:link]
	url = "http://"
	@url = url + params[:url]

	link_add = {
		:title => @name, 
		:url => @url
	}
	# binding.pry
	save(link_add)
  # save the task data
  redirect '/' # do not change this
end