class InquiryMailer < ApplicationMailer
  default from: 'nagareco@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.inquiry_reply.subject
  #
  def inquiry_reply
    @user = User.find(3)
    @inquiry = Inquiry.find(26)
    mail(to: @user.email, subject: '【Nagajake】お問い合わせの件')
    #@inquiry = Inquiry.find(26) このようにmailメソッドの下に来ると、受け渡し先のviewで@inquiryの値がnilになります
  end
end