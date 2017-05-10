class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :avgSize
      t.float :calories
      t.float :toFat
      t.float :chol
      t.float :sod
      t.float :pot
      t.float :totalCarbs
      t.float :diFi
      t.float :sugs
      t.float :pro

      t.timestamps
    end
  end
end
