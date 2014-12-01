# == Schema Information
#
# Table name: b@ooks
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  cuisine    :string(255)
#  chef       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Book < ActiveRecord::Base
	has_many :recipies
end
