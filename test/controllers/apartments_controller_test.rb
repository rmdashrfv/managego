require "test_helper"

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get evict" do
    get apartments_evict_url
    assert_response :success
  end
end
