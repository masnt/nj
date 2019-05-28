class Admin::CategoriesController < ApplicationController
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
end
