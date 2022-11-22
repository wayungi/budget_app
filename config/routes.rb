Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'landings#index'
  resources :categories
  resources :expenses

end
