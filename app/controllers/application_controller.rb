class ApplicationController < ActionController::Base

	before_action :set_search

	def set_search
	    @q = Product.ransack(params[:q])
	    @products = @q.result.page(params[:page]).per(3)
	end

end
