Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :categories, only: %i[index show]
  resources :products, only: %i[index show]
  resources :lineitems, only: %i[create destroy]
  resources :orders, only: %i[create show index]
  get '/cart', to: 'carts#show', as: :cart
end
