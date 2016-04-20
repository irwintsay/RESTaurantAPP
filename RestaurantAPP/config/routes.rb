Rails.application.routes.draw do

  # Root routes to WelcomeController
  root 'welcome#index'

  resources :servers, only: [:new, :create]
  resources :tables
  resources :customers
  resources :orders
  resources :items

  # Custom routes
  get '/index' => 'welcome#index', as: :log_in
  get '/servers/profile' => 'servers#profile', as: :profile

  post '/sessions' => 'sessions#create', as: :create_session
  delete '/sessions' => 'sessions#destroy', as: :delete_session
end
