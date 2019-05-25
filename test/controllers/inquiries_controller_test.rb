require 'test_helper'

class InquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inquiries_new_url
    assert_response :success
  end

  test "should get index" do
    get inquiries_index_url
    assert_response :success
  end

  test "should get show" do
    get inquiries_show_url
    assert_response :success
  end

  test "should get comfirm_new" do
    get inquiries_comfirm_new_url
    assert_response :success
  end

  test "should get complete" do
    get inquiries_complete_url
    assert_response :success
  end

end
