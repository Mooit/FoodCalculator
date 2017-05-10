class RemoveAvgSizeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :avgSize, :float
  end
end
