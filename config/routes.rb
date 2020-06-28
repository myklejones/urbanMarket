Rails.application.routes.draw do

resources :users do
  resources :products
  resources :services
  resources :conversations  
  resources :messages
end

resources :login, only: [:create] 
resources :products, only:[ :index, :show]
resources :services, only: [ :index, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end