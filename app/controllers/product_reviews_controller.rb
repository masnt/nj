class ProductReviewsController < ApplicationController

  def new
  	@product_review = ProductReview.new
  end

  def show
  	@product_review = ProductReview.find(params[:id])
  end

  def index
  	@product_reviews = ProductReview.all
  end

  def create
    @product_review = ProductReview.find(product_review_params)
    if @product_review.save
    flash[:notice] = "Post successfully!"
    redirect_to product_review_path(@product_review.id)
    else
    flash[:notice] = "error, post failed"
    render :new
    end
  end

	  private
      def product_review_params
          params.require(:product_review).permit( :review_title, :review_text, :rating, :products_id )
      end

end