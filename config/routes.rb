Rails.application.routes.draw do
  	get '/' => 'home#index'

  	get "/login" => "sessions#new"
  	post "/login" => "sessions#create"
  	get "/logout" => "sessions#destroy", as: :logout
  	get "/signup" => "users#new"
  	get "workout_generator" => 'workouts#generator', as: :generator

  	resources :users
  	resources :workouts
  	resources :exercises

end