require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get login_url
    assert_response :success
  end

  test "should get create" do
    post session_create_url
    assert_response :redirect
  end

  test "should get logout" do
    get session_logout_url
    assert_response :redirect
  end

end
