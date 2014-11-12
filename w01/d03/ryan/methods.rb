#method to create something

def age_in_seconds(age )
	seconds = age * 12 * 30 * 24 * 60 * 60
	puts "You've been around #{seconds} seconds."
end

age_in_seconds(34)

year = [0,31,28,31,30,31,30,31,31,30,31,30,31]


def new_day_finder(day, month, year)
	running_total = 0
	year.each do |x|
		running_total = running_total + x
	end
	running_total = running_total - year[month] - year[-(12-month)] + day
end

puts "There have been #{new_day_finder(12,11,year)} days this year so far."

def days_remaining(days)
	365 - days
end
days_left = days_remaining(new_day_finder(12,11,year))

puts "There are #{days_left} days left of the year."


january_first = new_day_finder(1,1,year)

puts january_first # not so good. 