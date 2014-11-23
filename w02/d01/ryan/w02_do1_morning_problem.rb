#w02_do1_morning_problem.rb

# def w02d01(number)
# 	array = []
# 	array.push(number)
# 	p array
# 	until number == 0 do 
# 		if number % 3 == 0
# 			array.push(number)
# 		number -= 1
# 		array.push(number)
# 	end 
# 	puts array


# end

# w02d01(10)



#working version VVV
# number = (0...1000)

# sum = 0

# number.each do |n|
# 	if n % 3 == 0 || n % 5  == 0
# 		sum += n
# 	end
# end
# puts sum

#inject = find the sum of something
#reduce - reduce collection of values into single value

result  = (0...1000).inject(0) do |sum, n|
	if n % 3 == 0 || n % 5 == 0
		sum + n
	else sum
	end
end

p result