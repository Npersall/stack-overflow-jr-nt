Rails.application.routes.draw do

  resources :questions
  resources :users

  get '/register' => 'sessions#new'
  post '/register' => 'sessions#create', :as => :create_user

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login_attempt'
  delete '/logout' => 'sessions#destroy'
  # post '/users/:id' => ""

  root 'questions#index'
end
