class Admin::InquiriesController < ApplicationController

  before_action :admin_user

  def index
  end

  def show
  end

  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
