class Admin::ProductsController < ApplicationController
    def edit
    end

  	def new
    @product = Product.new
    @product.pictures.build
    end


    def create
    @product = Product.new(product_params)
    @product.save

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: '商品の登録が完了しました。' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    @product.stock_quantity = @product.stock_quantity + params[:product][:recieve_quantity].to_i
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: '商品を更新しました。' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: '商品を削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :artist, :stock_quantity, :recieve_quantity, :product_text, :category_id, :label, :product_status, :unit_price, :jacket_image, pictures_images: [] )
    end
  end
