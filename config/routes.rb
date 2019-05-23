Rails.application.routes.draw do
  root to: 'products#index'
  get 'cart_histories/pay_choise' => 'cart_histories#pay_choise'
  get 'users/edit'
  get 'users/show'
  get 'products/index2' => 'products#index2'
  get 'shopinformations' => 'shopinformations#show'
  get 'shopinformations/new'
  post 'shopinformations/create' => 'shopinformations#create'
  patch 'users/:id' => 'users#update', as: 'update_user'

  resources :cart_histories, only: [:create]
  resources :shopinformations
  resources :products
  resources :post_images, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
