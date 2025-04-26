require "application_system_test_case"

class ContactListsTest < ApplicationSystemTestCase
  setup do
    @contact_list = contact_lists(:one)
  end

  test "visiting the index" do
    visit contact_lists_url
    assert_selector "h1", text: "Contact lists"
  end

  test "should create contact list" do
    visit contact_lists_url
    click_on "New contact list"

    fill_in "Email", with: @contact_list.email
    fill_in "Name", with: @contact_list.name
    fill_in "Phone", with: @contact_list.phone
    click_on "Create Contact list"

    assert_text "Contact list was successfully created"
    click_on "Back"
  end

  test "should update Contact list" do
    visit contact_list_url(@contact_list)
    click_on "Edit this contact list", match: :first

    fill_in "Email", with: @contact_list.email
    fill_in "Name", with: @contact_list.name
    fill_in "Phone", with: @contact_list.phone
    click_on "Update Contact list"

    assert_text "Contact list was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact list" do
    visit contact_list_url(@contact_list)
    click_on "Destroy this contact list", match: :first

    assert_text "Contact list was successfully destroyed"
  end
end
