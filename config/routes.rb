Rails.application.routes.draw do
  get "users/index"
  #get 'home/index'
  #devise_for :users
  resources :tasks
  resources :users, only: [:index]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #devise_for :users

devise_scope :user do
get '/users/sign_out' => 'devise/sessions#destroy'
end
  # Defines the root path route ("/")
  root "home#index"
end
