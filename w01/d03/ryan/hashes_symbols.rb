# people = [
# 	{
# 		name: "Ryan",
# 		age: 34,
# 		address: "81 Banambila"
# 	},

# 	{
# 		name: "Milena",
# 		age: 32,
# 		address: "81 Banambila"
# 	},

# 	{
# 		name: "Juniper",
# 		age: 2,
# 		address: "81 Banambila"
# 	}
# ]

# #puts "#{ryan[:name]}'s age is #{ryan[:age]}."

# #puts people[1][:name], people[2][:age]

# puts people[0].keys
# puts ""
# puts people[0].values
# puts ""
# puts people.map {|p| p.values}.flatten.uniq

a = ["Anil", "Erik", "Jonathan"]

puts a[1]
a = a.push("Ryan")
p a

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

p h[1]
p h[:two]
p h["two"]
h.merge!(3 => "Three")
p h
h.merge!(:four => 4)
p h

is = {true => "It's true!", false => "It's false"}

p is[2+2 == 4] # "It's true!"
p is["Erik" == "Jonathan"] # "It's false"
p is[9 > 10] # "It's false"
p is[0] #nil
p is["Erik"] #nil

#D.

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

p users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers].push(7)
users.merge!("Ryan" => {:favorite_numbers => [2]})
p users["Erik"][:favorite_numbers]
sorted = users["Erik"][:favorite_numbers].sort

p sorted[0]
evens = []
sorted.each do |x| 
	if x % 2 == 0
		evens.push(x)
	end
end
p evens

keys = users.keys
fav_numbers = []
keys.each do |x|
	fav_numbers << users[x][:favorite_numbers]
end

p fav_numbers.flatten.sort


