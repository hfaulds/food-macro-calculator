class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def carbohydrates
    recipe_ingredients.map(&:carbohydrates).inject(0, :+).round(2)
  end

  def fat
    recipe_ingredients.map(&:fat).inject(0, :+).round(2)
  end

  def protein
    recipe_ingredients.map(&:protein).inject(0, :+).round(2)
  end
end
