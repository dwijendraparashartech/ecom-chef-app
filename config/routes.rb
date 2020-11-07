Rails.application.routes.draw do
  get 'home/index'
  resources :collections
  resources :products
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root "/admin/dashboard#index"
    resources :dashboard
    resources :products do
      member do
        put :update_status
      end
    end
    resources :collections
  end
end
