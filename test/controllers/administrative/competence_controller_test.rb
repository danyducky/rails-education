require "test_helper"

class Administrative::CompetenceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrative_competence_index_url
    assert_response :success
  end
end
