Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "day_plans#index"

  resources :ingredients
  resources :recipes, :except => [:show] do
    resources :recipe_ingredients
  end
  resources :day_plans, :except => [:show] do
    resources :day_plan_recipes, :except => [:show]
  end
end
