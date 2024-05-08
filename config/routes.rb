Rails.application.routes.draw do
  resources :coman_users
  resources :brand_users
  resources :ingredients
  resources :recipes
  root "recipes#index"
end
