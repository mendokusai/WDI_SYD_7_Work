class Animal < ActiveRecord::Base
	validates :name, :species, :breed, :age, :sex, :arrival_time, :departure_time, presence: true, length: {minimum: 2 }

end
