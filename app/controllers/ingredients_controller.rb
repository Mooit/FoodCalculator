class IngredientsController < ApplicationController
  def index
    @ingredient = Ingredient.all
  end 
  
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  
  def new
  end
  
  
  def create
    @ingredient = Ingredient.new(ingredient_params)
    
    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
      end
    end
  end 
  
  private
    def ingredient_params
        params.require(:ingredient).permit(:name, :avgSize, :calories, :toFat, :chol, :sod, :pot, :totalCarbs, :diFi, :sugs, :pro)
    end
  
end
