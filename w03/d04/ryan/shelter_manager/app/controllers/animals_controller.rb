class AnimalsController < ApplicationController
  def index
  	#@animals is our connection to the database
  	@animals = Animal.all #gives an array of Animal instances.
  end
end
