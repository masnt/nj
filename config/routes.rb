Rails.application.routes.draw do
  get 'categories/edit'
  get 'categories/index'
  get 'categories/new'
  get 'categories/show'
  devise_for :users
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#                                     Controller#Action
#         users_confirm_new GET    /users/confirm_new(.:format)                                                             users#confirm_new
#                users_show GET    /users/show(.:format)                                                                    users#show
#                users_edit GET    /users/edit(.:format)                                                                    users#edit
#              users_update GET    /users/update(.:format)                                                                  users#update
#         users_show_mypage GET    /users/show_mypage(.:format)                                                             users#show_mypage
#         users_update_user GET    /users/update_user(.:format)                                                             users#update_user
#      users_confirm_delete GET    /users/confirm_delete(.:format)                                                          users#confirm_delete
#     users_complete_delete GET    /users/complete_delete(.:format)                                                         users#complete_delete
#                  products GET    /products(.:format)                                                                      products#index
#                           POST   /products(.:format)                                                                      products#create
#               new_product GET    /products/new(.:format)                                                                  products#new
#              edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                   product GET    /products/:id(.:format)                                                                  products#show
#                           PATCH  /products/:id(.:format)                                                                  products#update
#                           PUT    /products/:id(.:format)                                                                  products#update
#                           DELETE /products/:id(.:format)                                                                  products#destroy
#               post_images GET    /post_images(.:format)                                                                   post_images#index
#                           POST   /post_images(.:format)                                                                   post_images#create
#            new_post_image GET    /post_images/new(.:format)                                                               post_images#new
#                post_image GET    /post_images/:id(.:format)                                                               post_images#show
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.5/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create