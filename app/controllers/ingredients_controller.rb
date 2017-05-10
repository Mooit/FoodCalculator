class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  
  
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  
  
  def new
    @ingredient = Ingredient.new
  end 
  
  
  def edit
    @ingredient = Ingredient.find(params[:id])
  end 

  
  def create
    @ingredient = Ingredient.new(ingredient_params)
    
    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end 
  
  
  def update
        @ingredient = Ingredient.find(params[:id])
  
    if @ingredient.update(ingredient_params)
        redirect_to @ingredient
    else
      render 'edit'
    end
  end
  
  
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    
    redirect_to ingredients_path
  end
  
  
    private
    def ingredient_params
        params.require(:ingredient).permit(:name, :avgSize, :calories, :toFat, :chol, :sod, :pot, :totalCarbs, :diFi, :sugs, :pro)
    end
  
  
end 
