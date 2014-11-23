require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do

erb :html_forms 	
end

post "/buy" do
binding.pry
end