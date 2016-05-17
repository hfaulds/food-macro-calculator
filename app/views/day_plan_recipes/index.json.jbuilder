json.array!(@day_plan_recipes) do |day_plan_recipe|
  json.extract! day_plan_recipe, :id, :day_plan_id, :recipe_id
  json.url day_plan_recipe_url(day_plan_recipe, format: :json)
end
