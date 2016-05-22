Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "day_plans#index"

  resources :ingredients, :except => [:show]
  resources :recipes, :except => [:show] do
    resources :recipe_ingredients, :except => [:show]
  end
  resources :day_plans, :except => [:show] do
    resources :day_plan_recipes, :except => [:show]
  end
end
