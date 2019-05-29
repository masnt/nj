class Admin::HomeController < ApplicationController

  before_action :admin_user

  def top
  end

  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
