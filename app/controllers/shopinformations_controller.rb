class ShopinformationsController < ApplicationController


  def create
    @shopinformation = Shopinformation.new(shopinformation_params)
    @shopinformation.save

    redirect_to shopinformations_path
  end

  def index
    @shopinformations = Shopinformation.all
  end


  def update
    @shopinformations = Shopinformation.find(params[:id])
    @shopinformations.update(shopinformation_params)

    redirect_to shopinformations_path
  end

private

def shopinformation_params
params.require(:shopinformation).permit(:shopinfomation_text)
end
end

