class ProductReviewsController < ApplicationController

  def new
  	@product_review = ProductReview.new
  	#@product = Product.find(params[:id])
  end

  def show
  	@product_review = ProductReview.find(params[:id])
  end

  def index
  	@product_reviews = ProductReview.all
  end

  def create
    @product_review = ProductReview.find(product_review_params)
    #@product_review = Product.where( )
    if @product_review.save
    flash[:notice] = "Post successfully!"
    redirect_to product_review_path(@product_review.id)
    else
    flash[:notice] = "error, post failed"
    render :new
    end
  end

  def destroy
	product_review = ProductReview.find(params[:id])

	if product_review.destroy
		flash[:notice] = "destroy successfully!"
		redirect_to product_reviews_path
	else
		flash[:notice] = "destroy failed"
		redirect_to product_reviews_path
	end
  end

	  private
      def product_review_params
          params.require(:product_review).permit( :review_title, :review_text, :rating, :products_id )
      end

end