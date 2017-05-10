class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end
  
    def show
    @recipe = Recipe.find(params[:id])
  end
  
  
  def new
    @recipe = Recipe.new
  end 
  
  
  def edit
    @recipe = Recipe.find(params[:id])
  end 

  
  def create
    @recipe = Recipe.new(recipe_params)
    
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'recipe was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end 
  
  
  def update
        @recipe = Recipe.find(params[:id])
  
    if @recipe.update(recipe_params)
        redirect_to @recipe
    else
      render 'edit'
    end
  end
  
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    redirect_to recipes_path
  end
  
  
    private
    def recipe_params
        params.require(:recipe).permit(:name, :avgSize, :calories, :toFat, :chol, :sod, :pot, :totalCarbs, :diFi, :sugs, :pro)
    end
  
  
end
