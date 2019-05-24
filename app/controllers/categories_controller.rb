class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def new
  	@category = Category.new
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def show
  	@category = Category.find(params[:id])
  end

  def create
  	@category = Category.new(category_params)
  	if params[:preview]
  		flash[:notice] = "Preview now"
  	    render :new
  	elsif @category.save
		flash[:notice] = "Add successfully!"
		redirect_to categories_path
	  else
		flash[:notice] = "error, Add failed"
		render :new
	  end
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
	if @category.update(category_params)
		flash[:notice] = "Update successfully!"
		redirect_to categories_path
	else
		flash[:notice] = "error, Update failed"
		redirect_to edit_category_path(@category.id)
	end
  end

	private
		def category_params
		  	params.require(:category).permit(:category_image, :category_title)
	  end
end



#Memo
# <% @categories.each do |category| %>
# 	<p>Category Title ＆ Image Picture</p>
# 	<%= category.category_title%>
# 	<%= category.category_image%>

# 	<%= link_to 'delete', category_path(@category), method: :delete %>
# <% end %>
