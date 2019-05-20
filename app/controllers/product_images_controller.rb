class ProductImagesController < ApplicationController

 def new
 	@product_image = ProductImage.new
 end

 def create
 	@product_image = ProductImage.new(product_image_params)
 	@product_image.save
 end

 def index
 end

 def show
 end


private
    def product_image_params
        params.require(:product_image).permit(:product_id, :picture_id, :jacket_image)
    end

end
