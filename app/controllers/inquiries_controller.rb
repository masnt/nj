  class InquiriesController < ApplicationController

  def index
    @inquiries = Inquiry.all
    @inquiries = Inquiry.page(params[:page])
    @user = User.all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def new
    @inquiry = Inquiry.new
  end

  def comfirm_new
    @inquiry = Inquiry.new(inquiry_params)
    # @time = Time.now.to_s(:db) (←日時を渡そうと思いましたが、問い合わせられた日時は、created_atカラムから取得します)
    # binding.pry
    # render :comfirm_new if @inquiry.valid? #メソッドを実行するとバリデーションが実行されます。バリデーションが通ればfalseを返し、引っかかればtrueを返します。(return if @user.valid?)
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user_id = current_user.id
    @inquiry
    if @inquiry.save
    flash[:notice] = "Send successfully!"
    binding.pry
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

    private
      def inquiry_params
          params.require(:inquiry).permit(:inquiry_datetime, :inquiry_title, :inquiry_text, :user_id )
      end
end
