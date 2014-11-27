class Animal < ActiveRecord::Base
	validates :age, :name, :species, :breed, :sex, :arrival_time, :departure_time, presence: true, length: {minimum: 1 }
	

end
