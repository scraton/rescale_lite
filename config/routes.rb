Rails.application.routes.draw do
  resources :users
  resources :ingredients do
    resources :questions do
      resources :answers
    end
  end
  resources :recipes

  post "/set_current_user", to: "application#set_current_user"
  root "recipes#index"
end
