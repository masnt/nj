require 'test_helper'

class Admin::ProductReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_product_reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_product_reviews_show_url
    assert_response :success
  end

end
