class Admin::ShopinformationsController < ApplicationController

  before_action :admin_user

  def new
    @shopinformations = Shopinformation.new
  end


  def edit
    
    @shopinformations = Shopinformation.find(params[:id])
  end


  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
