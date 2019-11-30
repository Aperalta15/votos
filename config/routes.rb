Rails.application.routes.draw do

  get 'peoples/index'
  resources :personas, except: [:destroy]
  devise_for :users
  root to: 'home#index'

  resources :users do
  resources :personas, module: :users, only: [:index , :show]
  end
end
