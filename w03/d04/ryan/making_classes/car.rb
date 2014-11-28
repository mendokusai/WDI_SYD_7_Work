class Car
	attr_accessor :make, :model, :year

	def initialize(attr)
		# @make == self.make
		@make = attr[:make]
		@model = attr[:model]
		@year = attr[:year]
		@current_speed = 0
	end

	def current_speed #this is a 'getter'
		@current_speed
	end

	def current_speed=(current_speed) #this is the setter
		@current_speed = current_speed
	end

	def drive(speed)
		self.set_current_speed(speed)
	end

end

a_car = Car.new({
	a_car.make = "BMW",
	a_car.model = "RZY",
	a_car.year = 2012
	})
a_car.drive(120)
a_car.drive(80)

