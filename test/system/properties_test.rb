require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Address city", with: @property.address_city
    fill_in "Address county", with: @property.address_county
    fill_in "Address one", with: @property.address_one
    fill_in "Address state", with: @property.address_state
    fill_in "Address two", with: @property.address_two
    fill_in "Annual taxes", with: @property.annual_taxes
    fill_in "Association name", with: @property.association_name
    fill_in "Baths", with: @property.baths
    fill_in "Beds", with: @property.beds
    fill_in "Cooling", with: @property.cooling
    fill_in "Date", with: @property.date
    fill_in "Electricity util", with: @property.electricity_util
    fill_in "Feature one", with: @property.feature_one
    fill_in "Feature three", with: @property.feature_three
    fill_in "Feature two", with: @property.feature_two
    fill_in "Flooring", with: @property.flooring
    fill_in "Foundation", with: @property.foundation
    fill_in "Heating", with: @property.heating
    fill_in "Hoa string", with: @property.hoa_string
    fill_in "Home type", with: @property.home_type
    fill_in "Home value", with: @property.home_value
    fill_in "Id", with: @property.id
    fill_in "Legal protections", with: @property.legal_protections
    fill_in "Lot features string", with: @property.lot_features_string
    fill_in "Lot size", with: @property.lot_size
    fill_in "Monthly cost", with: @property.monthly_cost
    fill_in "Nearby schools", with: @property.nearby_schools
    fill_in "Overview", with: @property.overview
    fill_in "Price history", with: @property.price_history
    fill_in "Price per square foot", with: @property.price_per_square_foot
    fill_in "Roof age", with: @property.roof_age
    fill_in "Roof type", with: @property.roof_type
    fill_in "Sewer util", with: @property.sewer_util
    fill_in "Square foot", with: @property.square_foot
    fill_in "Status", with: @property.status
    fill_in "Tax history", with: @property.tax_history
    fill_in "Water util", with: @property.water_util
    fill_in "Year built", with: @property.year_built
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Address city", with: @property.address_city
    fill_in "Address county", with: @property.address_county
    fill_in "Address one", with: @property.address_one
    fill_in "Address state", with: @property.address_state
    fill_in "Address two", with: @property.address_two
    fill_in "Annual taxes", with: @property.annual_taxes
    fill_in "Association name", with: @property.association_name
    fill_in "Baths", with: @property.baths
    fill_in "Beds", with: @property.beds
    fill_in "Cooling", with: @property.cooling
    fill_in "Date", with: @property.date
    fill_in "Electricity util", with: @property.electricity_util
    fill_in "Feature one", with: @property.feature_one
    fill_in "Feature three", with: @property.feature_three
    fill_in "Feature two", with: @property.feature_two
    fill_in "Flooring", with: @property.flooring
    fill_in "Foundation", with: @property.foundation
    fill_in "Heating", with: @property.heating
    fill_in "Hoa string", with: @property.hoa_string
    fill_in "Home type", with: @property.home_type
    fill_in "Home value", with: @property.home_value
    fill_in "Id", with: @property.id
    fill_in "Legal protections", with: @property.legal_protections
    fill_in "Lot features string", with: @property.lot_features_string
    fill_in "Lot size", with: @property.lot_size
    fill_in "Monthly cost", with: @property.monthly_cost
    fill_in "Nearby schools", with: @property.nearby_schools
    fill_in "Overview", with: @property.overview
    fill_in "Price history", with: @property.price_history
    fill_in "Price per square foot", with: @property.price_per_square_foot
    fill_in "Roof age", with: @property.roof_age
    fill_in "Roof type", with: @property.roof_type
    fill_in "Sewer util", with: @property.sewer_util
    fill_in "Square foot", with: @property.square_foot
    fill_in "Status", with: @property.status
    fill_in "Tax history", with: @property.tax_history
    fill_in "Water util", with: @property.water_util
    fill_in "Year built", with: @property.year_built
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
