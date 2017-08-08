Rails.application.routes.draw do

  resources :questions
  resources :users

  get '/register' => 'users#new'
  post '/register' => 'users#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login_attempt'
  delete '/logout' => 'sessions#destroy'
  # post '/users/:id' => ""

  root 'questions#index'
end
