class ApplicationController < ActionController::Base

	before_action :set_search
	before_action :configure_permitted_parameters, if: :devise_controller?

	def set_search
	    @q = Product.ransack(params[:q])
	    @products = @q.result.page(params[:page]).per(3)
	end

	protected


	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name,:family_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email])
	end

	def after_sign_in_path_for(resource)
	    users_show_mypage_path(current_user.id)
	    #users_path(current_user.id)
	end

	def after_sign_out_path_for(resource)
	    root_path
	    # '5月21日段階でルーティングしている場合'
	end
end
