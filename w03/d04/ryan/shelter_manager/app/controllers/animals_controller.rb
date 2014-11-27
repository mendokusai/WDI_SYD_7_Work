class AnimalsController < ApplicationController
  def index
  	#@animals is our connection to the database
  	@animals = Animal.all #gives an array of Animal instances.
  end

  def show
  	@animal = Animal.find(params[:id])
  end

  def new
  	@animal = Animal.new
  end

  def create
  	# render plain: params[:animal].inspect
  	@animal = Animal.new(animal_params)

  	if @animal.save
  		redirect_to @animal
  	else
  		render 'new'
  	end
  end

  private
  	def animal_params
  		params.require(:animal).permit(:name, :breed, :arrival_time, :departure_time, :age, :species, :sex)
  	end
end
