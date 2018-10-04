Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: %i(index)
  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy) 

  root 'products#index'
end
