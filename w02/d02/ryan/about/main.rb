require "sinatra"
require "sinatra/reloader"


get '/' do
	
	#@full_names = full_names(@names, @student_data)
	erb :home, layout: :page_layout
end

get '/students/:name' do
	@student_data = {
		"Ryan" => {
			:name => "Ryan Pauley",
			:url => "http://www.ryanpauley.com",
			:pic => "/applesucks.jpg"
		},
		"Tony" => {
			:name => "Tony Abbott",
			:url => "http://en.wikipedia.org/wiki/Tony_Abbott",
			:pic => "/tony.jpg"
		},
		"Barack" => {
			:name => "Barack Obama",
			:url => "http://en.wikipedia.org/wiki/Barack_Obama",
			:pic => "/barack.jpg"
		}
	}
	@names = @student_data.keys

	
	def full_names(array, hash)
		list = "<ul>"
		array.each do |name|
			name = hash[name][:name]
			tag = "<a title="+name+" href=/students/"+name+">"+name+"</a>"
			list = list + "<li>" + tag + "</li>"
		end
		list = list + "</ul>"
		return list
	end 

	@full_names = full_names(@names, @student_data)

	@student_name = params[:name]
	@current_student = @student_data[@student_name][:name]
	@current_student_url = @student_data[@student_name][:url]
	@current_stud_pic = @student_data[@student_name][:pic]

	erb :student, layout: :page_layout
end

get "/contact" do

	erb :contact, layout: :page_layout
end

post "/thankyou" do
	@email = params[:email]
	@submit_name = params[:submit_name]

	split_names = @submit_name.split(" ")
	@first_name = split_names[0]

	"Hi #{@first_name} your email is: #{@email}."
	erb :thankyou, layout: :page_layout
end


#make a ruby class to handle the hash of the other student data