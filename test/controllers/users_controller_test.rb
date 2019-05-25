require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get edit" do
    get users_edit_url
=======
  test "should get confirm_new" do
    get users_confirm_new_url
>>>>>>> a6ddae704f1881540696b031428095f77a0e78f4
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

<<<<<<< HEAD
=======
  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get show_mypage" do
    get users_show_mypage_url
    assert_response :success
  end

  test "should get update_user" do
    get users_update_user_url
    assert_response :success
  end

  test "should get confirm_delete" do
    get users_confirm_delete_url
    assert_response :success
  end

  test "should get complete_delete" do
    get users_complete_delete_url
    assert_response :success
  end

>>>>>>> a6ddae704f1881540696b031428095f77a0e78f4
end
