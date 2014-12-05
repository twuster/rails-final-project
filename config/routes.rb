Rails.application.routes.draw do
  get 'pins/new'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'welcome', to: 'users#welcome', as: 'welcome'
  resources :boards
  resources :pins, :only => [:show, :new, :create, :destroy]
end
