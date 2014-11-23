require "sinatra"
require "sinatra/reloader"
require "json"
require "pry"



get '/' do 
	unless File.exists? 'todo_db.txt'
		File.open('todo_db.txt', 'a+').close
	else
		existing_events = File.open('todo_db.txt', 'r').read 
		binding.pry
		@events = JSON(existing_events) rescue []
		
	end

	erb :checklist
end

get '/event' do
	# binding.pry
	@event = params[:event]
	@time = params[:time]
	@am_pm = params[:am_pm]
	@notes = params[:notes]
	event_array = [@event, @time, @am_pm, @notes]

	# event_array = {
	# 	"event": @event, 
	# 	"time": @time, 
	# 	"am_pm": @am_pm, 
	# 	"notes": @notes
	# }

	event_json = JSON.generate(event_array)
	@show_json = event_json

	File.open('todo_db.txt', 'a+') do |event|
		event.write(event_json)
	end
	redirect '/'
	erb :events
end