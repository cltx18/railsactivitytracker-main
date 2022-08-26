require "test_helper"

class InvestmentPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investment_property = investment_properties(:one)
  end

  test "should get index" do
    get investment_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_investment_property_url
    assert_response :success
  end

  test "should create investment_property" do
    assert_difference('InvestmentProperty.count') do
      post investment_properties_url, params: { investment_property: { address_city: @investment_property.address_city, address_county: @investment_property.address_county, address_one: @investment_property.address_one, address_state: @investment_property.address_state, address_two: @investment_property.address_two, annual_taxes: @investment_property.annual_taxes, association_name: @investment_property.association_name, baths: @investment_property.baths, beds: @investment_property.beds, cooling: @investment_property.cooling, date: @investment_property.date, electricity_util: @investment_property.electricity_util, feature_one: @investment_property.feature_one, feature_three: @investment_property.feature_three, feature_two: @investment_property.feature_two, flooring: @investment_property.flooring, foundation: @investment_property.foundation, heating: @investment_property.heating, hoa_string: @investment_property.hoa_string, home_type: @investment_property.home_type, home_value: @investment_property.home_value, legal_protections: @investment_property.legal_protections, lot_features_string: @investment_property.lot_features_string, lot_size: @investment_property.lot_size, monthly_cost: @investment_property.monthly_cost, nearby_schools: @investment_property.nearby_schools, overview: @investment_property.overview, price_history: @investment_property.price_history, price_per_square_foot: @investment_property.price_per_square_foot, roof_age: @investment_property.roof_age, roof_type: @investment_property.roof_type, sewer_util: @investment_property.sewer_util, square_foot: @investment_property.square_foot, status: @investment_property.status, tax_history: @investment_property.tax_history, water_util: @investment_property.water_util, year_built: @investment_property.year_built } }
    end

    assert_redirected_to investment_property_url(InvestmentProperty.last)
  end

  test "should show investment_property" do
    get investment_property_url(@investment_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_investment_property_url(@investment_property)
    assert_response :success
  end

  test "should update investment_property" do
    patch investment_property_url(@investment_property), params: { investment_property: { address_city: @investment_property.address_city, address_county: @investment_property.address_county, address_one: @investment_property.address_one, address_state: @investment_property.address_state, address_two: @investment_property.address_two, annual_taxes: @investment_property.annual_taxes, association_name: @investment_property.association_name, baths: @investment_property.baths, beds: @investment_property.beds, cooling: @investment_property.cooling, date: @investment_property.date, electricity_util: @investment_property.electricity_util, feature_one: @investment_property.feature_one, feature_three: @investment_property.feature_three, feature_two: @investment_property.feature_two, flooring: @investment_property.flooring, foundation: @investment_property.foundation, heating: @investment_property.heating, hoa_string: @investment_property.hoa_string, home_type: @investment_property.home_type, home_value: @investment_property.home_value, legal_protections: @investment_property.legal_protections, lot_features_string: @investment_property.lot_features_string, lot_size: @investment_property.lot_size, monthly_cost: @investment_property.monthly_cost, nearby_schools: @investment_property.nearby_schools, overview: @investment_property.overview, price_history: @investment_property.price_history, price_per_square_foot: @investment_property.price_per_square_foot, roof_age: @investment_property.roof_age, roof_type: @investment_property.roof_type, sewer_util: @investment_property.sewer_util, square_foot: @investment_property.square_foot, status: @investment_property.status, tax_history: @investment_property.tax_history, water_util: @investment_property.water_util, year_built: @investment_property.year_built } }
    assert_redirected_to investment_property_url(@investment_property)
  end

  test "should destroy investment_property" do
    assert_difference('InvestmentProperty.count', -1) do
      delete investment_property_url(@investment_property)
    end

    assert_redirected_to investment_properties_url
  end
end
