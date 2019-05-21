Rails.application.routes.draw do
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
