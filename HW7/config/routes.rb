Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :authors do
        resources :articles do
          resources :likes
        end
        resources :comments do
          resources :likes
        end
      end
    end
  end
end
