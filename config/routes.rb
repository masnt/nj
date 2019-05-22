Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  get 'shopinformations' => 'shopinformations#show'
  get 'shopinformations/new'
  post 'shopinformations/create' => 'shopinformations#create'
  patch 'users/:id' => 'users#update', as: 'update_user'

  resources :shopinformations
  resources :products
  resources :post_images, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
