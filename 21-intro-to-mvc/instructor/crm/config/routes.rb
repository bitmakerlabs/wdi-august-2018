Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contacts, only: [:index, :new, :create, :show]
  root 'contacts#index'
end
