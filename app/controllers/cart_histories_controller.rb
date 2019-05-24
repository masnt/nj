class CartHistoriesController < ApplicationController
  def pay_choise
  	@cart_history = CartHistory.new
  end

  def new
  	@cart_history = CartHistory.new
  end

  def comfirm_new
  end

  def create
  	@cart_history = CartHistory.new(cart_history_params)
    @cart_history.save
  end


   def cart_history_params
    params.require(:cart_history).permit(:howtopay_history,:other_name, :other_name_kana, :other_name_kana, :other_address, :shipping_type)
  end
end