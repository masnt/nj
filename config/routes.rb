Rails.application.routes.draw do
  get '/pay_choise', to: 'cart_histories#pay_choise'
  get '/cart_histories/comfirm_new', to: 'cart_histories#comfirm_new'
  get '/cart_histories/complete_new', to: 'cart_histories#complete_new'
  resources :cart_histories

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html












  # 管理者
  get '/index_order', to: 'cart_histories#index_order'
  get '/user_history', to: 'cart_histories#user_history'



end
