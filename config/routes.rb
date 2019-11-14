Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root to: 'chats#index'
  resources :chats
  resources :users
end
