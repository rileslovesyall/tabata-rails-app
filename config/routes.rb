Rails.application.routes.draw do
  	get '/' => 'home#index'

  	get "/login" => "sessions#new"
  	post "/login" => "sessions#create"
  	get "/logout" => "sessions#destroy", as: :logout
  	get "/signup" => "users#new"

  	resources :users
  	resources :workouts
  	resources :exercises

end