Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :tests
  resources :questions
  resources :categories
  get 'kosher', to: 'categories#kosher'
end
