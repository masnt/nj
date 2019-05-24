require 'test_helper'

class Admin::ShopinformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_shopinformations_edit_url
    assert_response :success
  end

end
