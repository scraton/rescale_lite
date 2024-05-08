require "test_helper"

class BrandUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_user = brand_users(:one)
  end

  test "should get index" do
    get brand_users_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_user_url
    assert_response :success
  end

  test "should create brand_user" do
    assert_difference("BrandUser.count") do
      post brand_users_url, params: { brand_user: { company: @brand_user.company, email: @brand_user.email, name: @brand_user.name } }
    end

    assert_redirected_to brand_user_url(BrandUser.last)
  end

  test "should show brand_user" do
    get brand_user_url(@brand_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_user_url(@brand_user)
    assert_response :success
  end

  test "should update brand_user" do
    patch brand_user_url(@brand_user), params: { brand_user: { company: @brand_user.company, email: @brand_user.email, name: @brand_user.name } }
    assert_redirected_to brand_user_url(@brand_user)
  end

  test "should destroy brand_user" do
    assert_difference("BrandUser.count", -1) do
      delete brand_user_url(@brand_user)
    end

    assert_redirected_to brand_users_url
  end
end
