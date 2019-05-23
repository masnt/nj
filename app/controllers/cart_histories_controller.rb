class CartHistoriesController < ApplicationController
  def pay_choise
  	@cart_history = CartHistory.new
  end

  def new
  end

  def create
  	@cart_history = CartHistory.new(cart_history_params)
    @cart_history.save
  end


   def cart_history_params
    params.require(:cart_history).permit(:howtopay_history)
  end
end