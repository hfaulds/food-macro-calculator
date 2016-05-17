class DayPlan < ActiveRecord::Base
  has_many :day_plan_recipes

  def carbohydrates
    day_plan_recipes.map(&:carbohydrates).inject(0, :+).round(2)
  end

  def fat
    day_plan_recipes.map(&:fat).inject(0, :+).round(2)
  end

  def protein
    day_plan_recipes.map(&:protein).inject(0, :+).round(2)
  end
end
