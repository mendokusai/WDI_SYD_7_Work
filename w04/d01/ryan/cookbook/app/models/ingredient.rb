# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  measurement :string(255)
#  cost        :string(255)
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Ingredient < ActiveRecord::Base
	has_many :recipie_ingredients
	has_many :recipies, through: :recipie_ingredients
end
