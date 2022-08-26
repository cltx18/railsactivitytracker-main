require "application_system_test_case"

class InvestmentPropertiesTest < ApplicationSystemTestCase
  setup do
    @investment_property = investment_properties(:one)
  end

  test "visiting the index" do
    visit investment_properties_url
    assert_selector "h1", text: "Investment Properties"
  end

  test "creating a Investment property" do
    visit investment_properties_url
    click_on "New Investment Property"

    fill_in "Address city", with: @investment_property.address_city
    fill_in "Address county", with: @investment_property.address_county
    fill_in "Address one", with: @investment_property.address_one
    fill_in "Address state", with: @investment_property.address_state
    fill_in "Address two", with: @investment_property.address_two
    fill_in "Annual taxes", with: @investment_property.annual_taxes
    fill_in "Association name", with: @investment_property.association_name
    fill_in "Baths", with: @investment_property.baths
    fill_in "Beds", with: @investment_property.beds
    fill_in "Cooling", with: @investment_property.cooling
    fill_in "Date", with: @investment_property.date
    fill_in "Electricity util", with: @investment_property.electricity_util
    fill_in "Feature one", with: @investment_property.feature_one
    fill_in "Feature three", with: @investment_property.feature_three
    fill_in "Feature two", with: @investment_property.feature_two
    fill_in "Flooring", with: @investment_property.flooring
    fill_in "Foundation", with: @investment_property.foundation
    fill_in "Heating", with: @investment_property.heating
    fill_in "Hoa string", with: @investment_property.hoa_string
    fill_in "Home type", with: @investment_property.home_type
    fill_in "Home value", with: @investment_property.home_value
    fill_in "Legal protections", with: @investment_property.legal_protections
    fill_in "Lot features string", with: @investment_property.lot_features_string
    fill_in "Lot size", with: @investment_property.lot_size
    fill_in "Monthly cost", with: @investment_property.monthly_cost
    fill_in "Nearby schools", with: @investment_property.nearby_schools
    fill_in "Overview", with: @investment_property.overview
    fill_in "Price history", with: @investment_property.price_history
    fill_in "Price per square foot", with: @investment_property.price_per_square_foot
    fill_in "Roof age", with: @investment_property.roof_age
    fill_in "Roof type", with: @investment_property.roof_type
    fill_in "Sewer util", with: @investment_property.sewer_util
    fill_in "Square foot", with: @investment_property.square_foot
    fill_in "Status", with: @investment_property.status
    fill_in "Tax history", with: @investment_property.tax_history
    fill_in "Water util", with: @investment_property.water_util
    fill_in "Year built", with: @investment_property.year_built
    click_on "Create Investment property"

    assert_text "Investment property was successfully created"
    click_on "Back"
  end

  test "updating a Investment property" do
    visit investment_properties_url
    click_on "Edit", match: :first

    fill_in "Address city", with: @investment_property.address_city
    fill_in "Address county", with: @investment_property.address_county
    fill_in "Address one", with: @investment_property.address_one
    fill_in "Address state", with: @investment_property.address_state
    fill_in "Address two", with: @investment_property.address_two
    fill_in "Annual taxes", with: @investment_property.annual_taxes
    fill_in "Association name", with: @investment_property.association_name
    fill_in "Baths", with: @investment_property.baths
    fill_in "Beds", with: @investment_property.beds
    fill_in "Cooling", with: @investment_property.cooling
    fill_in "Date", with: @investment_property.date
    fill_in "Electricity util", with: @investment_property.electricity_util
    fill_in "Feature one", with: @investment_property.feature_one
    fill_in "Feature three", with: @investment_property.feature_three
    fill_in "Feature two", with: @investment_property.feature_two
    fill_in "Flooring", with: @investment_property.flooring
    fill_in "Foundation", with: @investment_property.foundation
    fill_in "Heating", with: @investment_property.heating
    fill_in "Hoa string", with: @investment_property.hoa_string
    fill_in "Home type", with: @investment_property.home_type
    fill_in "Home value", with: @investment_property.home_value
    fill_in "Legal protections", with: @investment_property.legal_protections
    fill_in "Lot features string", with: @investment_property.lot_features_string
    fill_in "Lot size", with: @investment_property.lot_size
    fill_in "Monthly cost", with: @investment_property.monthly_cost
    fill_in "Nearby schools", with: @investment_property.nearby_schools
    fill_in "Overview", with: @investment_property.overview
    fill_in "Price history", with: @investment_property.price_history
    fill_in "Price per square foot", with: @investment_property.price_per_square_foot
    fill_in "Roof age", with: @investment_property.roof_age
    fill_in "Roof type", with: @investment_property.roof_type
    fill_in "Sewer util", with: @investment_property.sewer_util
    fill_in "Square foot", with: @investment_property.square_foot
    fill_in "Status", with: @investment_property.status
    fill_in "Tax history", with: @investment_property.tax_history
    fill_in "Water util", with: @investment_property.water_util
    fill_in "Year built", with: @investment_property.year_built
    click_on "Update Investment property"

    assert_text "Investment property was successfully updated"
    click_on "Back"
  end

  test "destroying a Investment property" do
    visit investment_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investment property was successfully destroyed"
  end
end
