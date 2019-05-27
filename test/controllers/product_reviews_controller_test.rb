require 'test_helper'

class ProductReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_reviews_index_url
    assert_response :success
  end

  test "should get new" do
    get product_reviews_new_url
    assert_response :success
  end

  test "should get show" do
    get product_reviews_show_url
    assert_response :success
  end

end
