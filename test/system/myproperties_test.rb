require "application_system_test_case"

class MypropertiesTest < ApplicationSystemTestCase
  setup do
    @myproperty = myproperties(:one)
  end

  test "visiting the index" do
    visit myproperties_url
    assert_selector "h1", text: "Myproperties"
  end

  test "creating a Myproperty" do
    visit myproperties_url
    click_on "New Myproperty"

    click_on "Create Myproperty"

    assert_text "Myproperty was successfully created"
    click_on "Back"
  end

  test "updating a Myproperty" do
    visit myproperties_url
    click_on "Edit", match: :first

    click_on "Update Myproperty"

    assert_text "Myproperty was successfully updated"
    click_on "Back"
  end

  test "destroying a Myproperty" do
    visit myproperties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myproperty was successfully destroyed"
  end
end
