Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :tests, shallow: true do
    resources :questions
  end
  # resources :questions
  resources :categories
  resources :test_results
  get 'kosher', to: 'categories#kosher'
end
