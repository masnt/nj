class Admin::UsersController < ApplicationController

  before_action :admin_user

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @u = User.ransack(params[:q])
    @users = @u.result
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_users_index_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_index_path, notice:"#{@user.family_name}様のユーザー情報を削除しました"
  end

  private

  def user_params
      params.require(:user).permit( :user_id, :family_name,  :first_name, :family_name_kana, :first_name_kana, :email, :password, :password_confirmation,
  	 :address, :phone_number, :postal_code, :admin)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
