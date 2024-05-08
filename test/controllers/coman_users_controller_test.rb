require "test_helper"

class ComanUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coman_user = coman_users(:one)
  end

  test "should get index" do
    get coman_users_url
    assert_response :success
  end

  test "should get new" do
    get new_coman_user_url
    assert_response :success
  end

  test "should create coman_user" do
    assert_difference("ComanUser.count") do
      post coman_users_url, params: { coman_user: { company: @coman_user.company, email: @coman_user.email, name: @coman_user.name } }
    end

    assert_redirected_to coman_user_url(ComanUser.last)
  end

  test "should show coman_user" do
    get coman_user_url(@coman_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_coman_user_url(@coman_user)
    assert_response :success
  end

  test "should update coman_user" do
    patch coman_user_url(@coman_user), params: { coman_user: { company: @coman_user.company, email: @coman_user.email, name: @coman_user.name } }
    assert_redirected_to coman_user_url(@coman_user)
  end

  test "should destroy coman_user" do
    assert_difference("ComanUser.count", -1) do
      delete coman_user_url(@coman_user)
    end

    assert_redirected_to coman_users_url
  end
end
