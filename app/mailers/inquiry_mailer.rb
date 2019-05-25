class InquiryMailer < ApplicationMailer
  default from: 'nagareco@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.inquiry_reply.subject
  #
  def inquiry_reply
    @user = params[:user]
    mail (to: @user.email,
         subject: '【Nagareco】お問い合わせの件')
    @inquiry = Inquiry.find(params[:id])
  end
end
