class Animal < ActiveRecord::Base
	validates :name, :species, :breed, :sex, :arrival_time, :departure_time, presence: true, length: {minimum: 3 }
	validates :age, presence: true, length: {minimum: 1 }

end
