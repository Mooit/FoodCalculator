require 'test_helper'

class FoodCalcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_calc_index_url
    assert_response :success
  end

end
