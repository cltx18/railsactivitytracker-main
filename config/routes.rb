Rails.application.routes.draw do
  resources :flips
  resources :investment_properties
  resources :inv_properties
  resources :myproperties
  resources :properties
  resources :items
  resources :expenses
  devise_for :users
  #devise_for :installs
  resources :workouts
  resources :expenses
  resources :inventory
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
