class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

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

  def show
  	@category = Category.find(params[:id])
  	#@category = Products.where(category_id: params[:id])
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

  def destroy
		category = Category.find(category_params[:id])

		if category.destroy
			flash[:notice] = "destroy successfully!"
			redirect_to categories_path
		else
			flash[:notice] = "destroy failed"
			redirect_to edit_category_path
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


# 【new.html.rb】
# <% if flash[:notice] %>
# 	<p class="flash"><%= flash[:notice] %>
# </p>
# <% end %>

# <div class="container">
# 	<form>
# 		<% if params[:preview] %>
# 			<div class="row">
# 				<p>カテゴリーページではこのように表示されます</p>
# 				<%= @category.category_title %>
# 				 <%= attachment_image_tag @category, :category_image, :fill, 200, 200, class: "img-rounded", fallback: "no_image.jpg",size:'100x100' %>
# 			</div>
# 		<% end %>
# 		<div class="">
# 		<%= form_for(@category) do |f| %>

# 			<% if @category.errors.any? %>
# 				<%= @category.errors.count %>
# 				<%= @category.errors.full_messages.each do |message| %>
# 					<%= message %>
# 				<% end %>
# 			<% end %>
# 				    <div class="row">
# 				    <label class="col-xs-3">CategoryName</label>
# 					<%= f.text_field :category_title, autofocus: true , placeholder:'カテゴリ名を入力してください', class: "col-xs-3" %>
# 					</div>
# 				    <div class="row">
# 				    <label class="col-sm-3 ">CategoryImage</label>
# 						<%= f.attachment_field :category_image, class: "" %>
# 					</div>
# 						<%= f.submit 'Add New Category', class: "col-xs-3 btn btn-primary active" %>
# 						<%= f.submit 'Preview', name: "preview", class: "col-xs-3 btn btn-default active" %>
# 		<% end %>
# 	</div>
#     </form>
# </div>