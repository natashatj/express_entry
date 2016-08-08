require 'test_helper'

class ImmigrationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get immigration_home_url
    assert_response :success
  end

end
