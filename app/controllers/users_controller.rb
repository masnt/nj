class UsersController < ApplicationController
  def confirm_new
  end

  def show
  end

  def edit
  end

  def update
  end

  def show_mypage
  end

  def update_user
  end

  def confirm_delete
  end

  def complete_delete
  end

  def self.inquiry_reply
    InquiryMailer.report(User.third).deliver_now
  end
end
