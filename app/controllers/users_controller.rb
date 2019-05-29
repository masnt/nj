class UsersController < ApplicationController

  before_action :authenticate_user!


  def edit
  	 @user = User.find(params[:id])
  end


  def cart
    @user = User.find(params[:user_id])
    @carts = @user.cart_items
    @total_price = @carts.sum(:sub_total)
    @total_purchase_quantity = @carts.sum(:purchase_quantity)
  end


  def confirm_new
  end

  def show
  	 @user = current_user
  end

  def update
  	 @user = User.find(params[:id])
     @user.update(user_params)
     redirect_to user_path(@user.id)
  end




  def confirm_new
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
        params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email)
    end



  def user_item_params
    params.require(:user, :cart_item).permit(:product_name, :artist, :stock_quantity, :cart_item_id, :product_id, :purchase_quantity, :sub_total, :user_id, :unit_price, :amount)
  end

  def cart_item_params
    params.require(:cart_item).permit(:purchase_quantity , :cart_item_id)
  end

  def self.inquiry_reply
    InquiryMailer.report(User.third).deliver_now
  end

end
