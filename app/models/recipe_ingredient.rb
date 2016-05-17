class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  def ingredient_name
    ingredient.name
  end

  def carbohydrates
    (ingredient.carbohydrates * amount / 100).round(2)
  end

  def fat
    (ingredient.fat * amount / 100).round(2)
  end

  def protein
    (ingredient.protein * amount / 100).round(2)
  end
end
