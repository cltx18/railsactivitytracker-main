require "application_system_test_case"

class FlipsTest < ApplicationSystemTestCase
  setup do
    @flip = flips(:one)
  end

  test "visiting the index" do
    visit flips_url
    assert_selector "h1", text: "Flips"
  end

  test "creating a Flip" do
    visit flips_url
    click_on "New Flip"

    fill_in "Address city", with: @flip.address_city
    fill_in "Address county", with: @flip.address_county
    fill_in "Address one", with: @flip.address_one
    fill_in "Address state", with: @flip.address_state
    fill_in "Address two", with: @flip.address_two
    fill_in "Annual taxes", with: @flip.annual_taxes
    fill_in "Association name", with: @flip.association_name
    fill_in "Baths", with: @flip.baths
    fill_in "Beds", with: @flip.beds
    fill_in "Cooling", with: @flip.cooling
    fill_in "Date", with: @flip.date
    fill_in "Electricity util", with: @flip.electricity_util
    fill_in "Feature one", with: @flip.feature_one
    fill_in "Feature three", with: @flip.feature_three
    fill_in "Feature two", with: @flip.feature_two
    fill_in "Flooring", with: @flip.flooring
    fill_in "Foundation", with: @flip.foundation
    fill_in "Heating", with: @flip.heating
    fill_in "Hoa string", with: @flip.hoa_string
    fill_in "Home type", with: @flip.home_type
    fill_in "Home value", with: @flip.home_value
    fill_in "Legal protections", with: @flip.legal_protections
    fill_in "Lot features string", with: @flip.lot_features_string
    fill_in "Lot size", with: @flip.lot_size
    fill_in "Monthly cost", with: @flip.monthly_cost
    fill_in "Nearby schools", with: @flip.nearby_schools
    fill_in "Overview", with: @flip.overview
    fill_in "Price history", with: @flip.price_history
    fill_in "Price per square foot", with: @flip.price_per_square_foot
    fill_in "Roof age", with: @flip.roof_age
    fill_in "Roof type", with: @flip.roof_type
    fill_in "Sewer util", with: @flip.sewer_util
    fill_in "Square foot", with: @flip.square_foot
    fill_in "Status", with: @flip.status
    fill_in "Tax history", with: @flip.tax_history
    fill_in "Water util", with: @flip.water_util
    fill_in "Year built", with: @flip.year_built
    click_on "Create Flip"

    assert_text "Flip was successfully created"
    click_on "Back"
  end

  test "updating a Flip" do
    visit flips_url
    click_on "Edit", match: :first

    fill_in "Address city", with: @flip.address_city
    fill_in "Address county", with: @flip.address_county
    fill_in "Address one", with: @flip.address_one
    fill_in "Address state", with: @flip.address_state
    fill_in "Address two", with: @flip.address_two
    fill_in "Annual taxes", with: @flip.annual_taxes
    fill_in "Association name", with: @flip.association_name
    fill_in "Baths", with: @flip.baths
    fill_in "Beds", with: @flip.beds
    fill_in "Cooling", with: @flip.cooling
    fill_in "Date", with: @flip.date
    fill_in "Electricity util", with: @flip.electricity_util
    fill_in "Feature one", with: @flip.feature_one
    fill_in "Feature three", with: @flip.feature_three
    fill_in "Feature two", with: @flip.feature_two
    fill_in "Flooring", with: @flip.flooring
    fill_in "Foundation", with: @flip.foundation
    fill_in "Heating", with: @flip.heating
    fill_in "Hoa string", with: @flip.hoa_string
    fill_in "Home type", with: @flip.home_type
    fill_in "Home value", with: @flip.home_value
    fill_in "Legal protections", with: @flip.legal_protections
    fill_in "Lot features string", with: @flip.lot_features_string
    fill_in "Lot size", with: @flip.lot_size
    fill_in "Monthly cost", with: @flip.monthly_cost
    fill_in "Nearby schools", with: @flip.nearby_schools
    fill_in "Overview", with: @flip.overview
    fill_in "Price history", with: @flip.price_history
    fill_in "Price per square foot", with: @flip.price_per_square_foot
    fill_in "Roof age", with: @flip.roof_age
    fill_in "Roof type", with: @flip.roof_type
    fill_in "Sewer util", with: @flip.sewer_util
    fill_in "Square foot", with: @flip.square_foot
    fill_in "Status", with: @flip.status
    fill_in "Tax history", with: @flip.tax_history
    fill_in "Water util", with: @flip.water_util
    fill_in "Year built", with: @flip.year_built
    click_on "Update Flip"

    assert_text "Flip was successfully updated"
    click_on "Back"
  end

  test "destroying a Flip" do
    visit flips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flip was successfully destroyed"
  end
end
