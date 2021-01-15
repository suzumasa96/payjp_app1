Rails.application.routes.draw do
  get 'cards/new'
  get 'users/show'
  get 'items/index'
  devise_for :users
  root 'items#index'
  resources :users, only: [:show, :update]
  resources :cards, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
