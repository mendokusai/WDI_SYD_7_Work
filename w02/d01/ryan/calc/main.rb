#main.rb

require "sinatra"
require "sinatra/reloader"

#calc = 
get '/calc' do
	erb :form, layout: :page_layout
end

post "/calc" do
	@number_one = params[:number_one].to_i
	@operator = params[:operator]
	@number_two = params[:number_two].to_i
	
	case @operator
	when "+"
		@answer = @number_one + @number_two
	when "–"
		@answer = @number_one - @number_two
	when "*"
		@answer = @number_one * @number_two
	when "/"
		@answer = @number_one / @number_two
	# when "quit"
	# 	response = "q"
	else
		@answer = "You did not give valid numbers."
	end

	#@answer = calculator(@number_one, @operator, @number_two)
	#@answer =  "#{@answer}"
	erb :form, layout: :page_layout
end

# def calculator(arg1, arg2, arg3)
# 	case arg2
# 	when "add"
# 		return arg1 + arg3
# 	when "subtract"
# 		return arg1 - arg3
# 	when "multiply"
# 		return arg1 * arg3
# 	when "divide"
# 		return arg1 + arg3
# 	# when "quit"
# 	# 	response = "q"
# 	else
# 		return "You did not give valid numbers."
# 	end
# end

# while response != "q"
# 	response = calc

