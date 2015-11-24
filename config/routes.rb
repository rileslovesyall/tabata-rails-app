Rails.application.routes.draw do
  	get '/' => 'home#index'

  	get "/login" => "sessions#new"
  	post "/login" => "sessions#create"
  	get "/logout" => "sessions#destroy", as: :log_out

  	resources :users
  	resources :workouts
  	resources :exercises

end