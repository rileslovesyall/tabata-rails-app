Rails.application.routes.draw do
    get '/' => 'home#index'

    get "/login" => "sessions#new"
    post "/login" => "sessions#create"
    get "/logout" => "sessions#destroy", as: :logout
    get "/signup" => "users#new", as: :signup
    get "workouts/generator" => 'workouts#generator', as: :generator
    get "workout/:id/completed" => 'workouts#completed', as: :workout_completed 

    resources :users
    resources :workouts
    resources :exercises

end