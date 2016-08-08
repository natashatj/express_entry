require 'test_helper'

class ImmigrationControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get immigration__page_url
    assert_response :success
  end

end
