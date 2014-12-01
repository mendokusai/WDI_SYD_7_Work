class RecipesController < ApplicationController
  
  def index
  	@recipes = Recipe.all
  end

  def new
  	@recipe = Recipe.new
  end

  def create
  	@recipe = Recipe.new(recipe_params)
  	if @recipe.save
	  	redirect_to recipe_path(@recipe)
  	else
  		render :new
  	end
  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def update
  	@recipe = Recipe.find(params[:id])
  	if @recipe.update(recipe_params)
  	else
  		render :edit
  	end
  	redirect_to @recipe
  end

  def destroy
  	@recipe = Recipe.find(params[:id])
  	@recipe.destroy
  	redirect_to recipes_path
  end

  private
  	def recipe_params
  		params.require(:recipe).permit(:name, 
														  			:course, 
														  			:serving_size, 
														  			:instructions, 
														  			:image)

  	end

end