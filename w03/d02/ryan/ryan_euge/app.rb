require "sinatra"
require "sinatra/reloader"
require "pry"

get '/' do
	@message = "hello"
	erb :home
end

get '/names/:name_id' do
	@name_instance = params[:name_id]
	erb :names_display
end