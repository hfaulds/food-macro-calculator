Rails.application.routes.draw do
  resources :ingredients
  resources :recipes do
    resources :recipe_ingredients
  end
  resources :day_plans do
    resources :day_plan_recipes
  end
  resources :users
end
