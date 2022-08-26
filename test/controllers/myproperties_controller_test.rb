require "test_helper"

class MypropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myproperty = myproperties(:one)
  end

  test "should get index" do
    get myproperties_url
    assert_response :success
  end

  test "should get new" do
    get new_myproperty_url
    assert_response :success
  end

  test "should create myproperty" do
    assert_difference('Myproperty.count') do
      post myproperties_url, params: { myproperty: {  } }
    end

    assert_redirected_to myproperty_url(Myproperty.last)
  end

  test "should show myproperty" do
    get myproperty_url(@myproperty)
    assert_response :success
  end

  test "should get edit" do
    get edit_myproperty_url(@myproperty)
    assert_response :success
  end

  test "should update myproperty" do
    patch myproperty_url(@myproperty), params: { myproperty: {  } }
    assert_redirected_to myproperty_url(@myproperty)
  end

  test "should destroy myproperty" do
    assert_difference('Myproperty.count', -1) do
      delete myproperty_url(@myproperty)
    end

    assert_redirected_to myproperties_url
  end
end
