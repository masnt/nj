Rails.application.routes.draw do
  namespace :admin do
    get 'shopinformations/edit'
  end
  namespace :admin do
    get 'inquiries/index'
    get 'inquiries/show'
  end
  namespace :admin do
    get 'product_reviews/index'
    get 'product_reviews/show'
  end
  namespace :admin do
    get 'categories/new'
    get 'categories/edit'
  end
  namespace :admin do
    get 'cart_histories/index'
    get 'cart_histories/show'
  end
  namespace :admin do
    get 'products/edit'
    get 'products/new'
  end
  namespace :admin do
    get 'users/edit'
    get 'users/show'
    get 'users/index'
  end
  get 'users/confirm_new'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/show_mypage'
  get 'users/update_user'
  get 'users/confirm_delete'
  get 'users/complete_delete'
  resources :products
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
