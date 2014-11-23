#inheritance.rb

#require 'pry'

class Thing
	def exist
		puts "I exist!"
	end
end

class Animal < Thing
end

class Animal
	def move
		puts "I can move!"
	end
end

class Mammal < Animal
	def eat
		puts "I can eat! Yum yum yum."
	end

	def speak(action)
		puts "#{action}"
	end
end

class Monkey < Mammal
	def swing
		puts "I can swing!"
	end

	def speak(action)
		super #redefines the trait from this class.
		#getting rid of super writes over the inherited method
		#super calls speak ALSO from origin class 
		puts "Howowowowo I'm doing #{action}"
	end

	def perform
		eat
		swing
		speak "Hello There sailor!"
	end
end

george = Monkey.new

george.exist
george.speak("Poop flinging!")

#bind pry