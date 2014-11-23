class Restaurant
	def initialize(menu)
		@menu = menu
	end

	def cost(*order)
	the_order = orders[0]


	# cost = 0
	# the_order.keys.each do |the_item|
	# 	cost += @menu[the_item] * the_order[the_item]
	# end  #{this is what the inject below does}


	the_order.keys.inject(0) do |cost, key|
		cost + @menu[key] * the_order[key]

	end
end

rest = Restaurant.new({
	:rice => 3, 
	:noodles => 2
	}
)
rest.cost({
	:rice => 1,
	:noodles => 1
	}
)