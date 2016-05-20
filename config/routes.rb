Rails.application.routes.draw do
  devise_for :users
  get '/' => "day_plans#index"
  resources :ingredients
  resources :recipes do
    resources :recipe_ingredients
  end
  resources :day_plans do
    resources :day_plan_recipes
  end
  resources :users
end
