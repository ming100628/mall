Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :shops
  resources :customers
  resources :products
  resources :logins, only: [:new, :create]
end
