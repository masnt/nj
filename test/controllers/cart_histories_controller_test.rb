require 'test_helper'

class CartHistoriesControllerTest < ActionDispatch::IntegrationTest

  test "should get pay_choise" do
    get cart_histories_pay_choise_url

  test "should get index" do
    get cart_histories_index_url
    assert_response :success
  end

  test "should get new" do
    get cart_histories_new_url
    assert_response :success
  end

  test "should get show" do
    get cart_histories_show_url

    assert_response :success
  end

end
