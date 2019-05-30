class CartHistoriesController < ApplicationController


  	def pay_choise
  	  @cart_history = CartHistory.find(params[:cart_history_id])
  	end

  	def pay_new
    @cart_history = CartHistory.new
  	end

 	 def new
  	  user = current_user
  	  @cart_history = CartHistory.new
 	 end


 	 def create
  	@cart_history = CartHistory.new(cart_history_params)
  	@cart_history.user_id = current_user.id
  	@cart_history.save
  	# binding.pry


    redirect_to  cart_history_comfirm_path(@cart_history)
 	 end




	  def index  #購入履歴一覧
	  	@cart_item_history = CartItemHistory.where(user_id: current_user.id)
	  end


	  def comfirm_new  #購入確認ページ
	  	@cart_history = current_user
	  	@cart_item_history = CartHistory.new
	  	@cart_items = CartItem.where(user_id: current_user.id)
	  end
	  def comfirm
        @cart_history = CartHistory.find(params[:cart_history_id])
        @cart_items = CartItem.where(user_id: current_user.id)
	  end

	  def address_new
        @cart_history = CartHistory.new
	  end

	  def address
       @cart_history = CartHistory.find(params[:cart_history_id])
	  end


	  def complete_new  #購入完了ページ
	  end

	  def destroy
	  	@cart_item = CartItem.where(user_id: current_user.id)
	  	@cart_history = CartHistory.find(params[:id])
	  	@cart_history.amount_history = (CartItem.sum(:sub_total)+500)
	  	@order = Order.new
	  	@cart_item.each do |cart_item|
	  	@cart_item_history = CartItemHistory.new
	  	@cart_item_history.product_id = cart_item.product_id
	  	@product = Product.find(cart_item.product_id)
	  	@product.stock_quantity -= cart_item.purchase_quantity
	  	@product.save
	  	@cart_item_history.sub_total = cart_item.sub_total
	  	@cart_item_history.unit_price = cart_item.product.unit_price
	  	@cart_item_history.user_id = current_user.id
	  	@cart_item_history.buy_stock_history = cart_item.purchase_quantity
	  	@cart_item_history.cart_history_id = @cart_history.id
	  	@cart_item_history.save
        end
        if @cart_history.other_address != nil
        	@cart_history.shipping_type = 1
        end
        @cart_history.save
        @order.cart_history_id = @cart_history.id
        @order.save

       @cart_item.delete_all

       redirect_to cart_histories_complete_new_path
	  end



	  def update
	  	@cart_history = CartHistory.find(params[:id])
	  	@cart_history.update(cart_history_params)

	  	redirect_to  cart_history_comfirm_path(@cart_history)
	  end


	  def show



	  end


	  def back_destroy
	  	@cart_history = CartHistory.find(params[:cart_history_id])
	  	@cart_history.delete

	  	redirect_to user_users_cart_path(current_user.id)
	  end


	  def user_history   #管理者:admin   ※フレームワーク無し
	  end


    private

    def cart_history_params
    params.require(:cart_history).permit(:family_name,:family_name_history, :first_name_history, :family_name_kana_history, :first_name_kana_history, :postal_code_history, :ship_address_history, :howtopay_history,:amount_history,:other_name, :other_name_kana, :other_address, :other_phone_number, :ship_status, :shipping_type, :user_id, :other_postal_code)

   end

   def cart_item_history_params
   	params.require(:cart_item_history).permit(:product_id, :unit_price, :sub_total)
   end



end
