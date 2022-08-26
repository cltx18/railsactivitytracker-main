require "test_helper"

class InvPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inv_property = inv_properties(:one)
  end

  test "should get index" do
    get inv_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_inv_property_url
    assert_response :success
  end

  test "should create inv_property" do
    assert_difference('InvProperty.count') do
      post inv_properties_url, params: { inv_property: {  } }
    end

    assert_redirected_to inv_property_url(InvProperty.last)
  end

  test "should show inv_property" do
    get inv_property_url(@inv_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_inv_property_url(@inv_property)
    assert_response :success
  end

  test "should update inv_property" do
    patch inv_property_url(@inv_property), params: { inv_property: {  } }
    assert_redirected_to inv_property_url(@inv_property)
  end

  test "should destroy inv_property" do
    assert_difference('InvProperty.count', -1) do
      delete inv_property_url(@inv_property)
    end

    assert_redirected_to inv_properties_url
  end
end
