Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  resources :wikis

  devise_for :users

  delete '/users/downgrade', to: 'users#downgrade', as: :downgrade
  
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
