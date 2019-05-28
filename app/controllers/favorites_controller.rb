class FavoritesController < ApplicationController
  def index
  	#edirect_to favorites_index_path(current_user)
    else
      #redirect_to product_path
    end
  end

  def unlike
    # @product = Product.find(params[:product_id])
    #@favorite = Favorite.where(product_id: params[:product_id])
    #@favorite = @favorite.find_by(user_id: current_user.id)
    #if @favorite.destroy
       #redirect_to favorites_index_path
    #end
  end

private
    def favorite_params
     params.require(:favorite).permit(:user_id, :product_id)
    end

end
