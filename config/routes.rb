Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  get "users/index"
  #get 'home/index'
  #devise_for :users
  resources :tasks
  resources :users, only: [:index]
  devise_for :users
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  end


  # Defines the root path route ("/")
  
end
