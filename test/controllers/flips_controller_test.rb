require "test_helper"

class FlipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flip = flips(:one)
  end

  test "should get index" do
    get flips_url
    assert_response :success
  end

  test "should get new" do
    get new_flip_url
    assert_response :success
  end

  test "should create flip" do
    assert_difference('Flip.count') do
      post flips_url, params: { flip: { address_city: @flip.address_city, address_county: @flip.address_county, address_one: @flip.address_one, address_state: @flip.address_state, address_two: @flip.address_two, annual_taxes: @flip.annual_taxes, association_name: @flip.association_name, baths: @flip.baths, beds: @flip.beds, cooling: @flip.cooling, date: @flip.date, electricity_util: @flip.electricity_util, feature_one: @flip.feature_one, feature_three: @flip.feature_three, feature_two: @flip.feature_two, flooring: @flip.flooring, foundation: @flip.foundation, heating: @flip.heating, hoa_string: @flip.hoa_string, home_type: @flip.home_type, home_value: @flip.home_value, legal_protections: @flip.legal_protections, lot_features_string: @flip.lot_features_string, lot_size: @flip.lot_size, monthly_cost: @flip.monthly_cost, nearby_schools: @flip.nearby_schools, overview: @flip.overview, price_history: @flip.price_history, price_per_square_foot: @flip.price_per_square_foot, roof_age: @flip.roof_age, roof_type: @flip.roof_type, sewer_util: @flip.sewer_util, square_foot: @flip.square_foot, status: @flip.status, tax_history: @flip.tax_history, water_util: @flip.water_util, year_built: @flip.year_built } }
    end

    assert_redirected_to flip_url(Flip.last)
  end

  test "should show flip" do
    get flip_url(@flip)
    assert_response :success
  end

  test "should get edit" do
    get edit_flip_url(@flip)
    assert_response :success
  end

  test "should update flip" do
    patch flip_url(@flip), params: { flip: { address_city: @flip.address_city, address_county: @flip.address_county, address_one: @flip.address_one, address_state: @flip.address_state, address_two: @flip.address_two, annual_taxes: @flip.annual_taxes, association_name: @flip.association_name, baths: @flip.baths, beds: @flip.beds, cooling: @flip.cooling, date: @flip.date, electricity_util: @flip.electricity_util, feature_one: @flip.feature_one, feature_three: @flip.feature_three, feature_two: @flip.feature_two, flooring: @flip.flooring, foundation: @flip.foundation, heating: @flip.heating, hoa_string: @flip.hoa_string, home_type: @flip.home_type, home_value: @flip.home_value, legal_protections: @flip.legal_protections, lot_features_string: @flip.lot_features_string, lot_size: @flip.lot_size, monthly_cost: @flip.monthly_cost, nearby_schools: @flip.nearby_schools, overview: @flip.overview, price_history: @flip.price_history, price_per_square_foot: @flip.price_per_square_foot, roof_age: @flip.roof_age, roof_type: @flip.roof_type, sewer_util: @flip.sewer_util, square_foot: @flip.square_foot, status: @flip.status, tax_history: @flip.tax_history, water_util: @flip.water_util, year_built: @flip.year_built } }
    assert_redirected_to flip_url(@flip)
  end

  test "should destroy flip" do
    assert_difference('Flip.count', -1) do
      delete flip_url(@flip)
    end

    assert_redirected_to flips_url
  end
end
