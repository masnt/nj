class ProductReviewsController < ApplicationController

  def new
  	@product_review = ProductReview.new
  end

  def show
  end

  def index
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
          params.require(:product_review).permit( :review_title, :review_text, :rating ) # ← :products_id,を追加
      end

end