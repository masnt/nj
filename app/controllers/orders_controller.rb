class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def show
  end

  def destroy
    @order = Order.find(params[:id])
    @cart_history = CartHistory.find(@order.cart_history_id)
    @cart_history.ship_status = 1

    @cart_history.save

    @order.destroy

    redirect_to orders_path
  end
end
