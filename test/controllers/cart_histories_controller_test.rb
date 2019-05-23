require 'test_helper'

class CartHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get pay_choise" do
    get cart_histories_pay_choise_url
    assert_response :success
  end

end
