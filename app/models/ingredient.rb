class Ingredient < ApplicationRecord
  
  validates :name, presence: true,
                    length: { minimum: 2 }
  
  validates :avgSize, presence: true,
                    length: { minimum: 1 }
  
  validates :calories, presence: true,
                    length: { minimum: 1 }
  
  validates :toFat, presence: true,
                    length: { minimum: 1 }
  
  validates :chol, presence: true,
                    length: { minimum: 1 }
  
  validates :sod, presence: true,
                    length: { minimum: 1 }
  
  validates :pot, presence: true,
                    length: { minimum: 1 }
  
  validates :totalCarbs, presence: true,
                    length: { minimum: 1 }
  
  validates :diFi, presence: true,
                    length: { minimum: 1 }
  
  validates :sugs, presence: true,
                    length: { minimum: 1 }

  validates :pro, presence: true,
                    length: { minimum: 1 }
  
end
