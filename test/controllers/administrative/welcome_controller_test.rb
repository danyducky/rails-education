require "test_helper"

class Administrative::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrative_welcome_index_url
    assert_response :success
  end
end
