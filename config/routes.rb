Rails.application.routes.draw do

  resources :persona
  devise_for :users
  get "home/index"
  get "home/minor"

  root to: 'home#index'

end
