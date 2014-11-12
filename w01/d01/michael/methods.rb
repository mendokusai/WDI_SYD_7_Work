# width = 10
# height = 20

# def area(width, height)
# 	width * height
# end
def leap_year?(year)
	year % 4 == 0 && (year % 100 != 0 || year % 400 = 0)

def leap_year_check(year)
	if leap_year?(year)
		puts "#{year} is a leap year"
	else
		pust "#{year} is not a leap year"
	end
end