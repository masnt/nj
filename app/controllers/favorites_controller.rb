class FavoritesController < ApplicationController
before_action :login_check, only: [:index,:like,:unlike]

  def index
  	@favorites = current_user.favorites
  end

  def like
    @user_id = current_user.id
    @product_id = Product.find(params[:product_id]).id
    @favorite = Favorite.new(product_id: @product_id,user_id: @user_id)
    if @favorite.save
    redirect_to favorites_index_path(current_user)
    else
    redirect_to product_path
    end
  end

  def unlike
    # @product = Product.find(params[:product_id])
    @favorite = Favorite.where(product_id: params[:product_id])
    @favorite = @favorite.find_by(user_id: current_user.id)
    if @favorite.destroy
       redirect_to favorites_index_path
    end
  end

private
    def favorite_params
     params.require(:favorite).permit(:user_id, :product_id)
    end

    def login_check
    unless user_signed_in?
    flash[:alert] = "ログインしてください"
    redirect_to root_path
    end
   end
end
