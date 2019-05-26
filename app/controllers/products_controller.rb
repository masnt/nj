class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  def index2
    @products = Product.all
  end


  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end


  def add
    @product = Product.find(params[:product_id])
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.user_id = current_user.id
    @cart_items.product_id = @product.id
    @cart_item.save
    redirect_to user_users_cart_path(current_user)
  end


  def sumstock
    Product.sum(:stock_quantity)
    #User.sumでもかまいません
    #カラム名(フィールド名)は大文字使ってもいいですが、普通小文字の方がよいです
  end
    helper_method :sumstock


  # GET /products/new
  def new
    @product = Product.new
    @product.pictures.build
  end

  # GET /products/1/edit
  def edit
  end



  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.save


    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
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
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
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
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
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
      params.require(:product).permit(:product_name, :artist, :stock_quantity, :recieve_quantity, :product_text, :category_id, :label_id, :product_status, :unit_price, :jacket_image, pictures_images: [] )
    end

    def cart_item_params
      params.require(:cart_item).permit(:purcase_quantity)
    end

  end
