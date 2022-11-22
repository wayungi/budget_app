Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'landings#index'
  resources :categories do 
    resources :expenses
  end

end
