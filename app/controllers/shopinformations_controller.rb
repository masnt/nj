class ShopinformationsController < ApplicationController
  def edit
  end

  def update
  end

  def new
  	 @shopinformation = Shopinformation.new
  end

  def show
  	 @shopinformation = Shopinformation.find(params[:id])
  end

  def create
        # ストロングパラメーターを使用
     shopinformation = Shopinformation.new(shopinformation_params)
        # DBへ保存する
     shopinformation.save
  end


   private
    def shopinformation_params
        params.require(:shopinformation).permit(:shopinformation_text, :shopinformation_image)
    end

end
