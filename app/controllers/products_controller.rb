class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = @q.result.page(params[:page]).per(6)
  end

  def index2
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    #@cart_item = CartItem.new
    @review = ProductReview.where(product_id: @product.id)
  end

  def add
    @product = Product.find(params[:product_id])
    @product.update(product_params)
    @cart_item = CartItem.new
    @cart_item.user_id = current_user.id
    @cart_item.product_id = @product.id
    @cart_item.purchase_quantity = @product.select_stock
    @cart_item.sub_total = @product.select_stock * @product.unit_price * 1.08
    if (@product.stock_quantity - @cart_item.purchase_quantity) >= 0
      @cart_item.save
      redirect_to user_users_cart_path(current_user.id)
    else
      @review = ProductReview.where(product_id: @product.id)
      flash[:notice] = "在庫数を超えています"
      render :show
    end
    # @cart_item.save
    # redirect_to user_users_cart_path(current_user)
    # if文を使って在庫数量オーバーを防いでいます。上の二行は修正場所がエラーが起きた場合のために元々のコードをコメントアウトしてます。
  end

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
      params.require(:product).permit(:product_name, :artist, :stock_quantity, :recieve_quantity,:select_stock, :product_text, :category_id, :label, :product_status, :unit_price, :jacket_image, pictures_images: [] )
    end

    def cart_item_params
      params.require(:cart_item).permit(:purcase_quantity, :product_id, :user_id)
    end

  end
