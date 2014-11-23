require "sinatra"

get '/home' do #attaching "Hello to server request"
	"Hello"
end
	
post '/new_blog_post' do
	params[:title]
end