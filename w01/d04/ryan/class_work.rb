#class_work.rb

class Bicycle
	attr_accessor :material, :color, :weight, :gears, :breaks

	def print
		puts "This is the bicycle:"
		puts "Color: #{self.color}"
		puts "Materials: #{self.material}"
		puts "Weight (in g): #{self.weight}"
		puts "Gears: #{self.gears}"
		puts "Breaks: #{self.breaks}"
	end


end

giant = Bicycle.new

giant.material = "Composite"
giant.color = "Black"
giant.weight = 200
giant.gears = 20
giant.breaks = "center-pull standard"

giant.print