#sinatra.rb

require "sinatra"
require "sinatra/reloader"

get '/posts/:id/:slug' do# slug is is a url friendly title 'this-is-a-test'
	"load blog post with ID #{params[:id]} and slug #{params[:slug]}"
end


get '/search/:query/:sort' do
	"#{params[:query]}#{params[:search]}"
end

post "/users" do
	"You signed up with the email address: " +
	"#{params[:t]}" +
	"and password: #{params[:password]}"
end

post "/blog" do
	@title = params[:title] #instance variable
	@content = params[:content] #another instance
	erb :blog_post, layout: :page 
	# combine into erb>html #put this file in 'views'
end

#make a homepage
#root url
get "/" do
	"Welcome Home, you beautiful animal..."
end

get "/search/:query" do
	"You are searching for: #{params[:query]}"
end

get "/hello/:name" do
	"Hello #{params[:name]}"
end

get "/screencasts" do
	"The List of Screencasts"
end

get "/roman_numeral/:number"