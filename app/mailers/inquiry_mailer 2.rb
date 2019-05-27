class InquiryMailer < ApplicationMailer
  default from: 'naganojacket@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.inquiry_reply.subject
  #
  def inquiry_reply
    @user = User.find(3)
    mail(to: @user.email, subject: '【Nagajake】お問い合わせの件')
    @inquiry = Inquiry.find(26)
  end
end

  #①
  # def inquiry_reply
  #   @user = User.find(params[:id])
  #   mail (to: @user.email,
  #        subject: '【Nagajake】お問い合わせの件')
  #   @inquiry = Inquiry.find(params[:id])
  # end

  #②
  # def inquiry_reply(user)# emailを持つUserモデルを用意しておく
  #   @user = user
  #   mail
  #        to:'kazuhiro.okuda@gmail.com'
  #        subject:'【Nagajake】お問い合わせの件'
  # end
  #『rails s -b 0.0.0.0」でサーバーを起動し、以下のURLでpreviewを確認できます。
  #http://localhost:3000/rails/mailers/inquiry_mailer