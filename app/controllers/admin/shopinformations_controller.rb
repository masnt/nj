class Admin::ShopinformationsController < ApplicationController

  before_action :admin_user

  def new
    @shopinformations = Shopinformation.new
  end

  def create
    @shopinformation = Shopinformation.new(shopinformation_params)
    @shopinformation.save

    redirect_to shopinformations_path
  end


  def edit
    
    @shopinformations = Shopinformation.find(params[:id])
  end


  private

  def shopinformation_params
  params.require(:shopinformation).permit(:shopinfomation_text)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
