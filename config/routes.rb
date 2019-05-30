Rails.application.routes.draw do

  devise_for :users
  post 'inquiries/comfirm_new'
  get 'inquiries/complete' #errorが起こるので、resourcesより上に記述しています。
  post 'inquires/new'
  resources :inquiries

  get 'favorites/index'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'index/create'
  get 'index/destroy'

  resources :users, only: [:show, :edit, :update] do
  get'/pay_new', to: 'cart_histories#pay_new'
  resources :cart_histories, only: [:create,:destroy] do
  delete '/back_destroy', to: 'cart_histories#back_destroy'
  end
  get 'users/cart', to: "users#cart"
  end

  get '/show_mypage', to:'users#show_mypage'

  resources :orders

  resources :cart_items,only: [:create,:destroy]

  root to: 'products#index'
  get 'cart_hist/pay_choise' => 'cart_histories#pay_choise'
  get 'cart_histories/new' => 'cart_histories#new'

  get 'products/index2' => 'products#index2'
  get 'shopinformations' => 'shopinformations#show'
  get 'shopinformations/new' => 'shopinformations#new'
  post 'shopinformations/create' => 'shopinformations#create'
  root :to => 'products#index'

  get '/cart_histories/comfirm_new', to: 'cart_histories#comfirm_new'
  get '/cart_histories/complete_new', to: 'cart_histories#complete_new'

  get'/cart_history/address_new', to: 'cart_histories#address_new'




  namespace :admin do
    get 'home/top'
  end
  #get 'cart_items/show'
  #get 'cart_items/create'

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
    delete 'users/destroy'
    # ハラダ 5/29 delete追加
  end

  get 'admin/users/:id/edit' => 'admin/users#edit', as:'admin_users_edit'
  get 'admin/users/:id/' => 'admin/users#show', as:'admin_users_show'
  delete 'admin/users/destroy' => 'admin/users#destroy', as:'admin_users_destroy'
  patch 'admin/users/:id/update' => 'admin/users#update', as:'admin_users_update'

  get 'users/confirm_new'

  get 'users/confirm_delete'
  get 'users/complete_delete'


  resources :products do
    resources :product_reviews
    resources :cart_items,only: [ :edit, :index]
    patch '/add', to: 'products#add'
    put '/add', to:'products#add'
    post "like", to:'favorites#like'
    put "like", to:'favorites#like'
    delete "/unlike", to:'favorites#unlike'
  end

  resources :shopinformations
  resources :cart_histories do
  get '/cart_histories/pay_choise', to: 'cart_histories#pay_choise'
  get '/comfirm', to:'cart_histories#comfirm'
  get '/address', to:'cart_histories#address'
  end
  resources :inquiries


  resources :product_reviews
  resources :post_images, only: [:new, :create, :destroy , :index, :show]
  resources :categories
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # 管理者
  get '/user_history', to: 'cart_histories#user_history'



end

#  Prefix Verb   URI Pattern                                                                              Controller#Action
#             favorites_index GET    /favorites/index(.:format)                                                               favorites#index
#            favorites_create GET    /favorites/create(.:format)                                                              favorites#create
#           favorites_destroy GET    /favorites/destroy(.:format)                                                             favorites#destroy
#                index_create GET    /index/create(.:format)                                                                  index#create
#               index_destroy GET    /index/destroy(.:format)                                                                 index#destroy
#            new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#                user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#        destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#           new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#          edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#               user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                             PUT    /users/password(.:format)                                                                devise/passwords#update
#                             POST   /users/password(.:format)                                                                devise/passwords#create
#    cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#       new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#      edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#           user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                             PUT    /users(.:format)                                                                         devise/registrations#update
#                             DELETE /users(.:format)                                                                         devise/registrations#destroy
#                             POST   /users(.:format)                                                                         devise/registrations#create
#                   edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                        user GET    /users/:id(.:format)                                                                     users#show
#                             PATCH  /users/:id(.:format)                                                                     users#update
#                             PUT    /users/:id(.:format)                                                                     users#update
#                        root GET    /                                                                                        products#index
#   cart_histories_pay_choise GET    /cart_histories/pay_choise(.:format)                                                     cart_histories#pay_choise
#          cart_histories_new GET    /cart_histories/new(.:format)                                                            cart_histories#new
#             products_index2 GET    /products/index2(.:format)                                                               products#index2
#            shopinformations GET    /shopinformations(.:format)                                                              shopinformations#show
#        shopinformations_new GET    /shopinformations/new(.:format)                                                          shopinformations#new
#     shopinformations_create POST   /shopinformations/create(.:format)                                                       shopinformations#create
#                             GET    /                                                                                        products#index
#                  pay_choise GET    /pay_choise(.:format)                                                                    cart_histories#pay_choise
#  cart_histories_comfirm_new GET    /cart_histories/comfirm_new(.:format)                                                    cart_histories#comfirm_new
# cart_histories_complete_new GET    /cart_histories/complete_new(.:format)                                                   cart_histories#complete_new
#              admin_home_top GET    /admin/home/top(.:format)                                                                admin/home#top
#             cart_items_show GET    /cart_items/show(.:format)                                                               cart_items#show
#           cart_items_create GET    /cart_items/create(.:format)                                                             cart_items#create
#          cart_items_destroy GET    /cart_items/destroy(.:format)                                                            cart_items#destroy
# admin_shopinformations_edit GET    /admin/shopinformations/edit(.:format)                                                   admin/shopinformations#edit
#       admin_inquiries_index GET    /admin/inquiries/index(.:format)                                                         admin/inquiries#index
#        admin_inquiries_show GET    /admin/inquiries/show(.:format)                                                          admin/inquiries#show
# admin_product_reviews_index GET    /admin/product_reviews/index(.:format)                                                   admin/product_reviews#index
#  admin_product_reviews_show GET    /admin/product_reviews/show(.:format)                                                    admin/product_reviews#show
#        admin_categories_new GET    /admin/categories/new(.:format)                                                          admin/categories#new
#       admin_categories_edit GET    /admin/categories/edit(.:format)                                                         admin/categories#edit
#  admin_cart_histories_index GET    /admin/cart_histories/index(.:format)                                                    admin/cart_histories#index
#   admin_cart_histories_show GET    /admin/cart_histories/show(.:format)                                                     admin/cart_histories#show
#         admin_products_edit GET    /admin/products/edit(.:format)                                                           admin/products#edit
#          admin_products_new GET    /admin/products/new(.:format)                                                            admin/products#new
#            admin_users_edit GET    /admin/users/edit(.:format)                                                              admin/users#edit
#            admin_users_show GET    /admin/users/show(.:format)                                                              admin/users#show
#           admin_users_index GET    /admin/users/index(.:format)                                                             admin/users#index
#           users_confirm_new GET    /users/confirm_new(.:format)                                                             users#confirm_new
#           users_show_mypage GET    /users/show_mypage(.:format)                                                             users#show_mypage
#        users_confirm_delete GET    /users/confirm_delete(.:format)                                                          users#confirm_delete
#       users_complete_delete GET    /users/complete_delete(.:format)                                                         users#complete_delete
#                 product_add POST   /products/:product_id/add(.:format)                                                      products#add
#                             PUT    /products/:product_id/add(.:format)                                                      products#add
#                product_like POST   /products/:product_id/like(.:format)                                                     favorites#like
#                             PUT    /products/:product_id/like(.:format)                                                     favorites#like
#              product_unlike DELETE /products/:product_id/unlike(.:format)                                                   favorites#unlike
#          product_cart_items GET    /products/:product_id/cart_items(.:format)                                               cart_items#index
#                             POST   /products/:product_id/cart_items(.:format)                                               cart_items#create
#      edit_product_cart_item GET    /products/:product_id/cart_items/:id/edit(.:format)                                      cart_items#edit
#                    products GET    /products(.:format)                                                                      products#index
#                             POST   /products(.:format)                                                                      products#create
#                 new_product GET    /products/new(.:format)                                                                  products#new
#                edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                     product GET    /products/:id(.:format)                                                                  products#show
#                             PATCH  /products/:id(.:format)                                                                  products#update
#                             PUT    /products/:id(.:format)                                                                  products#update
#                             DELETE /products/:id(.:format)                                                                  products#destroy
#                             GET    /shopinformations(.:format)                                                              shopinformations#index
#                             POST   /shopinformations(.:format)                                                              shopinformations#create
#         new_shopinformation GET    /shopinformations/new(.:format)                                                          shopinformations#new
#        edit_shopinformation GET    /shopinformations/:id/edit(.:format)                                                     shopinformations#edit
#             shopinformation GET    /shopinformations/:id(.:format)                                                          shopinformations#show
#                             PATCH  /shopinformations/:id(.:format)                                                          shopinformations#update
#                             PUT    /shopinformations/:id(.:format)                                                          shopinformations#update
#                             DELETE /shopinformations/:id(.:format)                                                          shopinformations#destroy
#              cart_histories GET    /cart_histories(.:format)                                                                cart_histories#index
#                             POST   /cart_histories(.:format)                                                                cart_histories#create
#            new_cart_history GET    /cart_histories/new(.:format)                                                            cart_histories#new
#           edit_cart_history GET    /cart_histories/:id/edit(.:format)                                                       cart_histories#edit
#                cart_history GET    /cart_histories/:id(.:format)                                                            cart_histories#show
#                             PATCH  /cart_histories/:id(.:format)                                                            cart_histories#update
#                             PUT    /cart_histories/:id(.:format)                                                            cart_histories#update
#                             DELETE /cart_histories/:id(.:format)                                                            cart_histories#destroy
#                   inquiries GET    /inquiries(.:format)                                                                     inquiries#index
#                             POST   /inquiries(.:format)                                                                     inquiries#create
#                 new_inquiry GET    /inquiries/new(.:format)                                                                 inquiries#new
#                edit_inquiry GET    /inquiries/:id/edit(.:format)                                                            inquiries#edit
#                     inquiry GET    /inquiries/:id(.:format)                                                                 inquiries#show
#                             PATCH  /inquiries/:id(.:format)                                                                 inquiries#update
#                             PUT    /inquiries/:id(.:format)                                                                 inquiries#update
#                             DELETE /inquiries/:id(.:format)                                                                 inquiries#destroy
#                  users_cart GET    /users/cart(.:format)                                                                    users#cart
#                             GET    /products(.:format)                                                                      products#index
#                             POST   /products(.:format)                                                                      products#create
#                             GET    /products/new(.:format)                                                                  products#new
#                             GET    /products/:id/edit(.:format)                                                             products#edit
#                             GET    /products/:id(.:format)                                                                  products#show
#                             PATCH  /products/:id(.:format)                                                                  products#update
#                             PUT    /products/:id(.:format)                                                                  products#update
#                             DELETE /products/:id(.:format)                                                                  products#destroy
#                 post_images GET    /post_images(.:format)                                                                   post_images#index
#                             POST   /post_images(.:format)                                                                   post_images#create
#              new_post_image GET    /post_images/new(.:format)                                                               post_images#new
#                  post_image GET    /post_images/:id(.:format)                                                               post_images#show
#                  categories GET    /categories(.:format)                                                                    categories#index
#                             POST   /categories(.:format)                                                                    categories#create
#                new_category GET    /categories/new(.:format)                                                                categories#new
#               edit_category GET    /categories/:id/edit(.:format)                                                           categories#edit
#                    category GET    /categories/:id(.:format)                                                                categories#show
#                             PATCH  /categories/:id(.:format)                                                                categories#update
#                             PUT    /categories/:id(.:format)                                                                categories#update
#                             DELETE /categories/:id(.:format)                                                                categories#destroy
#             product_reviews GET    /product_reviews(.:format)                                                               product_reviews#index
#                             POST   /product_reviews(.:format)                                                               product_reviews#create
#          new_product_review GET    /product_reviews/new(.:format)                                                           product_reviews#new
#         edit_product_review GET    /product_reviews/:id/edit(.:format)                                                      product_reviews#edit
#              product_review GET    /product_reviews/:id(.:format)                                                           product_reviews#show
#                             PATCH  /product_reviews/:id(.:format)                                                           product_reviews#update
#                             PUT    /product_reviews/:id(.:format)                                                           product_reviews#update
#                             DELETE /product_reviews/:id(.:format)                                                           product_reviews#destroy
#       inquiries_comfirm_new POST   /inquiries/comfirm_new(.:format)                                                         inquiries#comfirm_new
#          inquiries_complete GET    /inquiries/complete(.:format)                                                            inquiries#complete
#                inquires_new POST   /inquires/new(.:format)                                                                  inquires#new
#                             GET    /inquiries(.:format)                                                                     inquiries#index
#                             POST   /inquiries(.:format)                                                                     inquiries#create
#                             GET    /inquiries/new(.:format)                                                                 inquiries#new
#                             GET    /inquiries/:id/edit(.:format)                                                            inquiries#edit
#                             GET    /inquiries/:id(.:format)                                                                 inquiries#show
#                             PATCH  /inquiries/:id(.:format)                                                                 inquiries#update
#                             PUT    /inquiries/:id(.:format)                                                                 inquiries#update
#                             DELETE /inquiries/:id(.:format)                                                                 inquiries#destroy
#                 index_order GET    /index_order(.:format)                                                                   cart_histories#index_order
#                user_history GET    /user_history(.:format)                                                                  cart_histories#user_history
#                  refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.5/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
#          rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#   rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#          rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#   update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#        rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
