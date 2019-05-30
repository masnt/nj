class Admin::CategoriesController < ApplicationController

before_action :admin_user

  def new
  	@category = Category.new
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(category_params[:id])
    if @category.destroy
    flash[:notice] = "delete successfully!"
    redirect_to categories_path
    else
    flash[:notice] = "error, delete failed"
    render :edit
    end
  end

  def update
  @category = Category.find(params[:id])
    if params[:preview]
      flash[:notice] = "Preview now"
        render :edit
    elsif @category.update
    flash[:notice] = "Add successfully!"
    redirect_to categories_path
  else
    flash[:notice] = "error, Add failed"
    render :new
  end
  end


  private

    def category_params
        params.require(:category).permit(:category_image, :category_title)
    end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
