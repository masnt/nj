class CartItemsController < ApplicationController
  
	def show
	   @cart_item = CartItem.find(params[:id])
	   @product = @cart_item.product
	end

	
	def create
	   @cart_item = CartItem.new(cart_item_params)
	   @product = Product.find(params[:product_id])
	   @cart_item.user_id = current_user.id
	   @cart_item.product_id = @product.id
	   @cart_item.purcase_quantity = @product.
	   @cart_item.save

	   redirect_to user_users_cart_path(current_user)
	end

	def destroy
	   @cart = CartItem.find(params[:id])
	   @cart.delete
	   redirect_to user_users_cart_path(current_user)
	end

	private

	def cart_item_params
		params.require(:cart_item).permit(:stock_quantity, :product_name, :artist, :stock_quantity,:purcase_quantity)
	end
end