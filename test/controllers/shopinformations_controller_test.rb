require 'test_helper'

class ShopinformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shopinformations_new_url
    assert_response :success
  end

  test "should get show" do
    get shopinformations_show_url
    assert_response :success
  end

  test "should get index" do
    get shopinformations_index_url
    assert_response :success
  end

end
