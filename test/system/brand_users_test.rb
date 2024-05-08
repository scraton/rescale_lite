require "application_system_test_case"

class BrandUsersTest < ApplicationSystemTestCase
  setup do
    @brand_user = brand_users(:one)
  end

  test "visiting the index" do
    visit brand_users_url
    assert_selector "h1", text: "Brand users"
  end

  test "should create brand user" do
    visit brand_users_url
    click_on "New brand user"

    fill_in "Company", with: @brand_user.company
    fill_in "Email", with: @brand_user.email
    fill_in "Name", with: @brand_user.name
    click_on "Create Brand user"

    assert_text "Brand user was successfully created"
    click_on "Back"
  end

  test "should update Brand user" do
    visit brand_user_url(@brand_user)
    click_on "Edit this brand user", match: :first

    fill_in "Company", with: @brand_user.company
    fill_in "Email", with: @brand_user.email
    fill_in "Name", with: @brand_user.name
    click_on "Update Brand user"

    assert_text "Brand user was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand user" do
    visit brand_user_url(@brand_user)
    click_on "Destroy this brand user", match: :first

    assert_text "Brand user was successfully destroyed"
  end
end
