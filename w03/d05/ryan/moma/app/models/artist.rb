class Artist < ActiveRecord::Base
	has_many :paintings
	validates :first_name, :last_name, presence: true
end
