Rails.application.routes.draw do
  devise_for :users

  get '/pay_choise', to: 'cart_histories#pay_choise'
  get '/cart_histories/comfirm_new', to: 'cart_histories#comfirm_new'
  get '/cart_histories/complete_new', to: 'cart_histories#complete_new'
  resources :cart_histories


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
  resources :categories
  resources :product_reviews

  post 'inquiries/comfirm_new'
  get 'inquiries/complete' #errorが起こるので、resourcesより上に記述しています。
  resources :inquiries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html












  # 管理者
  get '/index_order', to: 'cart_histories#index_order'
  get '/user_history', to: 'cart_histories#user_history'



end
