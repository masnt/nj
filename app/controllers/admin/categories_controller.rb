class Admin::CategoriesController < ApplicationController

before_action :admin_user

  def new
  end

  def edit
  end

  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
