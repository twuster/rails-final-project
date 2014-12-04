Rails.application.routes.draw do
  get 'pins/new'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :boards
  resources :pins, :only => [:show, :new, :create]
end
