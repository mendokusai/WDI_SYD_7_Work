# print "Enter a number: "
# pre_roman = gets.strip.to_i
# puts pre_roman 


# if pre_roman % 1000 == 0
# 	ems = pre_roman / 1000
# elsif pre_roman % 500 == 0
# 	dees = pre_roman / 500
# elsif pre_roman % 100 == 0
# 	cees = pre_roman / 100
# elsif pre_roman % 50 == 0
# 	ells = pre_roman / 50
# elsif pre_roman % 10 == 0
# 	exes = pre_roman / 10
# elsif pre_roman % 1 == 0
# 	eyes = pre_roman / 1
# else
# 	puts "something bad happened"
# end

# print "M: #{ems}, D: #{dees}, C: #{cees}, L: #{ells}, X: #{exes}, I: #{eyes}"

#solution

def to_roman(number)
	string = "I" * number

	string.gsub("I" * 1000, "M").
	gsub("I" * 900, "CM").
	gsub("I" * 500, "D"),
	gsub("I" * 400, "CD"),
	gsub("I" * 100, "C").
	gsub("I" 90, "XC").
	gsub("I" * 50, "L").
	gsub("I" * 40, "XL").
	gsub("I" * 10, "X").
	gsub("I" * 9, "IX").
	gsub("I" * 5, "V").
	gsub("I" * 4, "IV")
end

puts to_roman(1234) #this is breaking down somewhere...

