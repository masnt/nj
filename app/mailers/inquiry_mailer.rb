class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.inquiry_reply.subject
  #
  def inquiry_reply(user)
    @user = user

    mail from: 'nagareco@gmail.com'
         to: user.email,
         subject: '【Nagareco】お問い合わせの件'
  end
end
