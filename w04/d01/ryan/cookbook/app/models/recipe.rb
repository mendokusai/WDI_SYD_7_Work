# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  serving_size :string(255)
#  instructions :text
#  image        :string(255)
#  book_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Recipe < ActiveRecord::Base
	belongs_to :book
	has_many :recipie_ingredients
	has_many :ingredients, through: :recipie_ingredients
end
