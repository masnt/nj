class Admin::CategoriesController < ApplicationController

before_action :admin_user

  def new
  	@category = Category.new
  end

  def edit
  	@category = Category.find(params[:id])
  	if params[:preview]
  		flash[:notice] = "Preview now"
  	    render :edit
  	elsif @category.save
		flash[:notice] = "Add successfully!"
		redirect_to categories_path
	else
		flash[:notice] = "error, Add failed"
		render :new
	end
  end

  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
