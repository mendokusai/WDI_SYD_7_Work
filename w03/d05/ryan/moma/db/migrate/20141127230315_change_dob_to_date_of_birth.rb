class ChangeDobToDateOfBirth < ActiveRecord::Migration
  def change
  	#creates a new version of the database
  	rename_column :artists, :dob, :date_of_birth
  	rename_column :artists, :name, :first_name
  	add_column :artists, :last_name, :string 
  end
end
