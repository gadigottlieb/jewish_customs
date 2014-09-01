Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :holidays, only: [:index, :show]
  resources :koshers, only: [:index, :show, :create, :update, :destroy]
end
