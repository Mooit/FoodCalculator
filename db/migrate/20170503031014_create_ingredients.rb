class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :avgSize
      t.integer :calories
      t.integer :toFat
      t.integer :chol
      t.integer :sod
      t.integer :pot
      t.integer :totalCarbs
      t.integer :diFi
      t.integer :sugs
      t.integer :pro

      t.timestamps
    end
  end
end
