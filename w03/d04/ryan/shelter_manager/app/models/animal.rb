class Animal < ActiveRecord::Base
	validates :name, :species, :breed, :sex, :arrival_time, :departure_time, presence: {strict: true}, length: {minimum: 3 }
	validates :age, presence: {strict: true}, length: {minimum: 1 }

end
