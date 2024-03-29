Rails.application.routes.draw do
  require 'sidekiq/web'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  authenticate :admin_user do
    mount Sidekiq::Web => '/admin/sidekiq'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :categories, only: %i[index show]
  resources :products, only: %i[index show]
  resources :lineitems, only: %i[create destroy]
  resources :orders, only: %i[create show index]
  get '/cart', to: 'carts#show', as: :cart
  post 'lineitems/:id/add' => "lineitems#add_quantity", as: "lineitem_add"
  post 'lineitems/:id/reduce' => "lineitems#reduce_quantity", as: "lineitem_reduce"
  post 'orders/:id/pay' => "orders#pay", as: "order_pay"
end
