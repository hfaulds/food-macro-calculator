Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "day_plans#index"

  resources :ingredients
  resources :recipes do
    resources :recipe_ingredients
  end
  resources :day_plans do
    resources :day_plan_recipes
  end
end
