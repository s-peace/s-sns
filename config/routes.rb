Rails.application.routes.draw do
  root to: 'chats#index'
  resources :chats
end
