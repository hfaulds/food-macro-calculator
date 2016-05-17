class DayPlanRecipe < ActiveRecord::Base
  belongs_to :recipe

  def recipe_name
    recipe.name
  end

  def carbohydrates
    recipe.carbohydrates
  end

  def fat
    recipe.fat
  end

  def protein
    recipe.protein
  end
end
