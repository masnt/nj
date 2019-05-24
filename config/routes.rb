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

  resources :inquiries
  post 'inquiries/comfirm_new'
  get 'inquiries/complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html












  # 管理者
  get '/index_order', to: 'cart_histories#index_order'
  get '/user_history', to: 'cart_histories#user_history'



end

#                      Prefix Verb   URI Pattern                                                                              Controller#Action
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
#                  pay_choise GET    /pay_choise(.:format)                                                                    cart_histories#pay_choise
#  cart_histories_comfirm_new GET    /cart_histories/comfirm_new(.:format)                                                    cart_histories#comfirm_new
# cart_histories_complete_new GET    /cart_histories/complete_new(.:format)                                                   cart_histories#complete_new
#              cart_histories GET    /cart_histories(.:format)                                                                cart_histories#index
#                             POST   /cart_histories(.:format)                                                                cart_histories#create
#            new_cart_history GET    /cart_histories/new(.:format)                                                            cart_histories#new
#           edit_cart_history GET    /cart_histories/:id/edit(.:format)                                                       cart_histories#edit
#                cart_history GET    /cart_histories/:id(.:format)                                                            cart_histories#show
#                             PATCH  /cart_histories/:id(.:format)                                                            cart_histories#update
#                             PUT    /cart_histories/:id(.:format)                                                            cart_histories#update
#                             DELETE /cart_histories/:id(.:format)                                                            cart_histories#destroy
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
#                  users_show GET    /users/show(.:format)                                                                    users#show
#                  users_edit GET    /users/edit(.:format)                                                                    users#edit
#                users_update GET    /users/update(.:format)                                                                  users#update
#           users_show_mypage GET    /users/show_mypage(.:format)                                                             users#show_mypage
#           users_update_user GET    /users/update_user(.:format)                                                             users#update_user
#        users_confirm_delete GET    /users/confirm_delete(.:format)                                                          users#confirm_delete
#       users_complete_delete GET    /users/complete_delete(.:format)                                                         users#complete_delete
#                    products GET    /products(.:format)                                                                      products#index
#                             POST   /products(.:format)                                                                      products#create
#                 new_product GET    /products/new(.:format)                                                                  products#new
#                edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                     product GET    /products/:id(.:format)                                                                  products#show
#                             PATCH  /products/:id(.:format)                                                                  products#update
#                             PUT    /products/:id(.:format)                                                                  products#update
#                             DELETE /products/:id(.:format)                                                                  products#destroy
#                 post_images GET    /post_images(.:format)                                                                   post_images#index
#                             POST   /post_images(.:format)                                                                   post_images#create
#              new_post_image GET    /post_images/new(.:format)                                                               post_images#new
#                  post_image GET    /post_images/:id(.:format)                                                               post_images#show
#                   inquiries GET    /inquiries(.:format)                                                                     inquiries#index
#                             POST   /inquiries(.:format)                                                                     inquiries#create
#                 new_inquiry GET    /inquiries/new(.:format)                                                                 inquiries#new
#                edit_inquiry GET    /inquiries/:id/edit(.:format)                                                            inquiries#edit
#                     inquiry GET    /inquiries/:id(.:format)                                                                 inquiries#show
#                             PATCH  /inquiries/:id(.:format)                                                                 inquiries#update
#                             PUT    /inquiries/:id(.:format)                                                                 inquiries#update
#                             DELETE /inquiries/:id(.:format)                                                                 inquiries#destroy
#       inquiries_comfirm_new POST   /inquiries/comfirm_new(.:format)                                                         inquiries#comfirm_new
#          inquiries_complete GET    /inquiries/complete(.:format)                                                            inquiries#complete
#                 index_order GET    /index_order(.:format)                                                                   cart_histories#index_order
#                user_history GET    /user_history(.:format)                                                                  cart_histories#user_history
#                  refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.5/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
#          rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#   rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#          rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#   update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#        rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create