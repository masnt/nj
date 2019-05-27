class UsersController < ApplicationController
  
  before_action :authenticate_user!

  def cart
    @user = current_user
    @carts = @user.cart_items
    @total_price = @carts.sum(:sub_total)
    @total_purchase_quantity = @carts.sum(:purchase_quantity)
  end


  def confirm_new
  end

  def show
  end

  def edit
  end

  def update
  end

  def show_mypage
  end

  def update_user
  end

  def confirm_delete
  end

  def complete_delete
  end

  private
  
    def user_params
      params.require(:user, :cart_item).permit(:product_name, :artist, :stock_quantity, :cart_item_id, :product_id, :purchase_quantity, :sub_total, :user_id, :unit_price, :amount)
    end

    def cart_item_params
      params.require(:cart_item).permit(:purchase_quantity , :cart_item_id)
    end
end
