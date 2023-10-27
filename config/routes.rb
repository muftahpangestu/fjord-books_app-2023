Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :books
  match '/users',   to: 'users#index',   via: 'get'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
