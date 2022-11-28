Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      root 'articles#index'
      # resources :authors do
      resources :articles, :comments, :authors
      #end
    end
  end
end
