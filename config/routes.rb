Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  resources :users, only: [:edit, :update]
  root "messages#index"
  resources :rooms, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
