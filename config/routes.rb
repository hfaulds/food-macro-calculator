Rails.application.routes.draw do
  resources :ingredients
  resources :recipes do
    resources :recipe_ingredients
  end
  resources :users
end
