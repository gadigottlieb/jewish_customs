Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :tests, shallow: true do
    resources :questions
  end
  resources :categories
  post 'test_submit', to: 'test_results#test_submit'
  get 'kosher', to: 'categories#kosher'
end
