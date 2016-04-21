Rails.application.routes.draw do

  # Root routes to WelcomeController
  root 'welcome#index'

  resources :users, only: [:new, :create]
  resources :tables
  resources :customers
  resources :orders
  resources :items

  # Custom routes
  get '/index' => 'welcome#index', as: :log_in
  get '/users/profile' => 'users#profile', as: :profile

  post '/sessions' => 'sessions#create', as: :create_session
  delete '/sessions' => 'sessions#destroy', as: :delete_session

  post '/sessions/table' => 'sessions#createtable', as: :create_table_session
  delete '/sessions/table' => 'sessions#destroytable', as: :delete_table_session

end
