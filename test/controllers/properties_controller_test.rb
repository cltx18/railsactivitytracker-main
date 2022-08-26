require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { address_city: @property.address_city, address_county: @property.address_county, address_one: @property.address_one, address_state: @property.address_state, address_two: @property.address_two, annual_taxes: @property.annual_taxes, association_name: @property.association_name, baths: @property.baths, beds: @property.beds, cooling: @property.cooling, date: @property.date, electricity_util: @property.electricity_util, feature_one: @property.feature_one, feature_three: @property.feature_three, feature_two: @property.feature_two, flooring: @property.flooring, foundation: @property.foundation, heating: @property.heating, hoa_string: @property.hoa_string, home_type: @property.home_type, home_value: @property.home_value, id: @property.id, legal_protections: @property.legal_protections, lot_features_string: @property.lot_features_string, lot_size: @property.lot_size, monthly_cost: @property.monthly_cost, nearby_schools: @property.nearby_schools, overview: @property.overview, price_history: @property.price_history, price_per_square_foot: @property.price_per_square_foot, roof_age: @property.roof_age, roof_type: @property.roof_type, sewer_util: @property.sewer_util, square_foot: @property.square_foot, status: @property.status, tax_history: @property.tax_history, water_util: @property.water_util, year_built: @property.year_built } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address_city: @property.address_city, address_county: @property.address_county, address_one: @property.address_one, address_state: @property.address_state, address_two: @property.address_two, annual_taxes: @property.annual_taxes, association_name: @property.association_name, baths: @property.baths, beds: @property.beds, cooling: @property.cooling, date: @property.date, electricity_util: @property.electricity_util, feature_one: @property.feature_one, feature_three: @property.feature_three, feature_two: @property.feature_two, flooring: @property.flooring, foundation: @property.foundation, heating: @property.heating, hoa_string: @property.hoa_string, home_type: @property.home_type, home_value: @property.home_value, id: @property.id, legal_protections: @property.legal_protections, lot_features_string: @property.lot_features_string, lot_size: @property.lot_size, monthly_cost: @property.monthly_cost, nearby_schools: @property.nearby_schools, overview: @property.overview, price_history: @property.price_history, price_per_square_foot: @property.price_per_square_foot, roof_age: @property.roof_age, roof_type: @property.roof_type, sewer_util: @property.sewer_util, square_foot: @property.square_foot, status: @property.status, tax_history: @property.tax_history, water_util: @property.water_util, year_built: @property.year_built } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
