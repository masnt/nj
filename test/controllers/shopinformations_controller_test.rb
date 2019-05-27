require 'test_helper'

class ShopinformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get shopinformations_edit_url
    assert_response :success
  end

  test "should get update" do
    get shopinformations_update_url
    assert_response :success
  end

  test "should get new" do
    get shopinformations_new_url
    assert_response :success
  end

end
