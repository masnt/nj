require 'test_helper'

class InquiryMailerTest < ActionMailer::TestCase
  test "inquiry_reply" do
    mail = InquiryMailer.inquiry_reply
    assert_equal "Inquiry reply", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
