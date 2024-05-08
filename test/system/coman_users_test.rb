require "application_system_test_case"

class ComanUsersTest < ApplicationSystemTestCase
  setup do
    @coman_user = coman_users(:one)
  end

  test "visiting the index" do
    visit coman_users_url
    assert_selector "h1", text: "Coman users"
  end

  test "should create coman user" do
    visit coman_users_url
    click_on "New coman user"

    fill_in "Company", with: @coman_user.company
    fill_in "Email", with: @coman_user.email
    fill_in "Name", with: @coman_user.name
    click_on "Create Coman user"

    assert_text "Coman user was successfully created"
    click_on "Back"
  end

  test "should update Coman user" do
    visit coman_user_url(@coman_user)
    click_on "Edit this coman user", match: :first

    fill_in "Company", with: @coman_user.company
    fill_in "Email", with: @coman_user.email
    fill_in "Name", with: @coman_user.name
    click_on "Update Coman user"

    assert_text "Coman user was successfully updated"
    click_on "Back"
  end

  test "should destroy Coman user" do
    visit coman_user_url(@coman_user)
    click_on "Destroy this coman user", match: :first

    assert_text "Coman user was successfully destroyed"
  end
end
