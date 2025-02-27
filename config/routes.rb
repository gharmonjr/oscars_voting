Rails.application.routes.draw do
  root "categories#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: [:new, :create]
  # resources :categories, only: [:index, :show]
  # resources :actor_categories, only: [:index]
  # resources :movie_categories, only: [:index]
  # resources :actor_category_users, only: [:create]
  # resources :movie_category_users, only: [:create]
end
