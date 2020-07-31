Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  resources :users, only: [:edit, :update]
  root "rooms#index"
  resources :rooms, only: [:new, :create]
end
