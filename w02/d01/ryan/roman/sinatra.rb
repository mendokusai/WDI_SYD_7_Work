#sinatra.rb

require "sinatra"
require "sinatra/reloader"

def roman_numerals(arg)
	stupid = "I" * arg
		stupid = stupid.gsub("I" * 1000, "M").
		gsub("I" * 900,  "CM").
		gsub("I" * 500,  "D").
		gsub("I" * 400,  "CD").
		gsub("I" * 100,  "C").
		gsub("I" * 90,   "XC").
		gsub("I" * 50,   "L").
		gsub("I" * 40,   "XL").
		gsub("I" * 10,   "X").
		gsub("I" * 9,    "IX").
		gsub("I" * 6,    "VI").
		gsub("I" * 5,    "V").
		gsub("I" * 4,    "IV")
	return stupid
end

get "/roman/:number" do 
	@number = params[:number].to_i
	@answer = roman_numerals(@number)

	# @stupid = "I" * @number
	# 	@stupid = @stupid.gsub("I" * 1000, "M").
	# 	gsub("I" * 900,  "CM").
	# 	gsub("I" * 500,  "D").
	# 	gsub("I" * 400,  "CD").
	# 	gsub("I" * 100,  "C").
	# 	gsub("I" * 90,   "XC").
	# 	gsub("I" * 50,   "L").
	# 	gsub("I" * 40,   "XL").
	# 	gsub("I" * 10,   "X").
	# 	gsub("I" * 9,    "IX").
	# 	gsub("I" * 6,    "VI").
	# 	gsub("I" * 5,    "V").
	# 	gsub("I" * 4,    "IV")
	erb :roman, layout: :page
end


