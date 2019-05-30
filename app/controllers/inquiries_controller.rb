  class InquiriesController < ApplicationController

  def index
    @inquiries = Inquiry.all
    @inquiries = Inquiry.page(params[:page])
    @user = User.all
    @
  end

  def show
    @inquiry = Inquiry.find(params[:id])
    @user = User.find(@inquiry.user_id)
    @reply = Inquiry.new
  end

  def new
    @inquiry = Inquiry.new
    #if params[:Editing]
  end

  def comfirm_new
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user_id = current_user.id
    # @time = Time.now.to_s(:db) (←日時を渡そうと思いましたが、問い合わせられた日時は、created_atカラムから取得します)
    #メソッドを実行するとバリデーションが実行されます。バリデーションが通ればfalseを返し、引っかかればtrueを返します。(return if @inquiry.valid?)
    render :new if @inquiry.invalid?
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user_id = current_user.id
    @inquiry
    if params[:back]
      render :new
    elsif @inquiry.save
      flash[:notice] = "Send successfully!"
      redirect_to inquiries_complete_path
    else
      flash[:notice] = "error, sent failed"
      render :comfirm_new
    end
  end

  def complete
    # render :action => 'complete'#要らない（各アクションでは、記述が無くても裏でrenderが動いている（らしい））
    # session[:post] = nil
  end

  def sendmail
    user = User.find(3)
    @mail = InquiryMailer.inquiry_reply(user).deliver_now
    render plain: 'メール送信を完了しました'
  end

    private
      def inquiry_params
          params.require(:inquiry).permit(:inquiry_datetime, :inquiry_title, :inquiry_text, :user_id )
      end
end
