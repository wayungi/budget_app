Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'landings#index'
  resources :categories, :only => [:index, :new, :create] do 
    resources :expenses, :only => [:index, :new, :create]
  end
end
