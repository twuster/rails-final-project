Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'welcome', to: 'users#welcome', as: 'welcome'
  resources :boards
end
