require "test_helper"

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landings_index_url
    assert_response :success
  end
end
