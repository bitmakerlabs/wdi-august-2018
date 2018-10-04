Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: %i(index)
  resource :users, only: %i(new create)

  root 'products#index'
end
