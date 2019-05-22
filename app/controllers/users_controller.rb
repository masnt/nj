class UsersController < ApplicationController
  def edit
  	 @user = User.find(params[:id])
  end

  def show
  	 @user = User.find(params[:id])
  end

  def update
  	  user = User.find(params[:id])
      user.update(user_params)
      redirect_to user_path(user.id)
  end

  private
    def user_params
        params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :mail)
    end

end
