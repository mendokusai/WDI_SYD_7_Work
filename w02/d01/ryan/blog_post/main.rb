require "sinatra"
require "sinatra/reloader"

get '/' do
	erb :form, layout: :page_layout
end

post '/posts' do
	@title = params[:title]
	@author = params[:author] 
	@content = params[:content]
	erb :post, layout: :page_layout
end
