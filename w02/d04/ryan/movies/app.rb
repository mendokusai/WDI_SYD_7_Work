require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"

#response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')



get '/' do 
	
	
	if params[:movie_title] == "" && params[:button] == "I'm feeling lucky!"
		random_number = random
		random_search = HTTParty.get("http://www.omdbapi.com/?i=#{random_number}&plot=full&tomatoes=true")
		@movie = JSON(random_search)
	  redirect "/movies/#{random_number}"
	elsif params[:button] == "I'm feeling lucky!"
		search_term = params[:movie_title].gsub(' ', '+')
	  response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}&plot=full&tomatoes=true")
	  @movie = JSON(response)
	  @id = @movie["imdbID"]


	  redirect "/movies/#{@id}"
	 else
		if params[:movie_title]
			search_term = params[:movie_title].gsub(" ", "+") #cleans up the user input
			response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
			@movies = JSON(response)["Search"]
	  end
	end
	erb :home
end

get '/movies/:id' do
if params[:id]
		search_term = params[:id]
		response = HTTParty.get("http://www.omdbapi.com/?i=#{search_term}&plot=full&tomatoes=true")
		@movie = JSON(response)
		#@tomato = @movie["tomatoRating"].to_f.round
		#@tomato = tomato.to_f.round
		
	end
	erb :home
end

def random
	number1 = rand(0...9).to_s
	number2 = rand(0...9).to_s
	number3 = rand(0...9).to_s
	number4 = rand(0...9).to_s
	number5 = rand(0...9).to_s
	return "tt00" + number1 + number2 + number3 + number4 + number5
end

def get_pics(rating, tomatoORstars)
	tom = "<img src='/tomato.png' width='25px'>"
	p_tom = "<img src='/partial_tomato.png' width='18px'>"
	star = "<img src='/star.png' width='25px'>"
	p_star = "<img src='/partial_star.png' width='20px'>"
	if tomatoORstars == "tomato"
		unless rating % 0 == 0
			@tomatoes = (tom * rating.to_i) + p_tom
			return @tomatoes
		else
			@tomatoes = tom * rating.to_i
			return @tomatoes
		end
	elsif tomatoORstars == "star"
		unless rating % 0 == 0
			@stars = (star * rating.to_i) + p_star
			return @stars
		else	
			@stars = star * rating.to_i
			return @stars
		end
	end
end



# get '/search' do
# 	if params[:search]


# get '/' do 
# 	if params[:movie_title]
# 		search_term = params[:movie_title].gsub(" ", "+") #cleans up the user input
# 		response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
# 		@movie = JSON(response)

# 	end
# 	erb :home
# end



