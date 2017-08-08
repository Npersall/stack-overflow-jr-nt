Rails.application.routes.draw do

  resources :questions
  resources :users

  get '/register' => 'users#new'
  post '/register' => 'users#create'

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#login'
  delete '/logout' => 'sessions#destroy'
  # post '/users/:id' => ""

  root 'questions#index'
end
