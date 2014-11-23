class Car

	def initialize()
	def drive(speed)
		@current_speed = speed #@_ locks it into the class for the class to use it in different methods.
	end
	
	def brake
		stopping_time = @current_speed / 10
	end

	def current_speed
		@current_speed
	end

end
