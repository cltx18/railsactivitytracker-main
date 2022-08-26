require "application_system_test_case"

class InvPropertiesTest < ApplicationSystemTestCase
  setup do
    @inv_property = inv_properties(:one)
  end

  test "visiting the index" do
    visit inv_properties_url
    assert_selector "h1", text: "Inv Properties"
  end

  test "creating a Inv property" do
    visit inv_properties_url
    click_on "New Inv Property"

    click_on "Create Inv property"

    assert_text "Inv property was successfully created"
    click_on "Back"
  end

  test "updating a Inv property" do
    visit inv_properties_url
    click_on "Edit", match: :first

    click_on "Update Inv property"

    assert_text "Inv property was successfully updated"
    click_on "Back"
  end

  test "destroying a Inv property" do
    visit inv_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inv property was successfully destroyed"
  end
end
