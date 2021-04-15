require 'test_helper'

class CrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cro = cros(:one)
  end

  test "should get index" do
    get cros_url
    assert_response :success
  end

  test "should get new" do
    get new_cro_url
    assert_response :success
  end

  test "should create cro" do
    assert_difference('Cro.count') do
      post cros_url, params: { cro: {  } }
    end

    assert_redirected_to cro_url(Cro.last)
  end

  test "should show cro" do
    get cro_url(@cro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cro_url(@cro)
    assert_response :success
  end

  test "should update cro" do
    patch cro_url(@cro), params: { cro: {  } }
    assert_redirected_to cro_url(@cro)
  end

  test "should destroy cro" do
    assert_difference('Cro.count', -1) do
      delete cro_url(@cro)
    end

    assert_redirected_to cros_url
  end
end
