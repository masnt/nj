class ShopinformationsController < ApplicationController


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

