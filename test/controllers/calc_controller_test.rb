require 'test_helper'

class CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get input_url
    assert_response :redirect
  end

  test "should post output to redirect" do
    post output_url
    assert_response :redirect
  end

end
