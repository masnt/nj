class ShopinformationsController < ApplicationController

  def new
    @Shopinformations = Shopinformation.new
  end
  def create
    @Shopinformation = Shopinformation.new(shopinformation_params)
    @Shopinformation.save

    redirect_to shopinformations_path
  end

  def index
    @Shopinformations = Shopinformation.all
  end

  def edit
    @Shopinformations = Shopinformation.find(1)
  end

  def update
    @Shopinformations = Shopinformation.find(params[:id])
    @Shopinformations.update(shopinformation_params)

    redirect_to shopinformations_path
  end

private

def shopinformation_params
params.require(:shopinformation).permit(:shopinfomation_text)
end
end

