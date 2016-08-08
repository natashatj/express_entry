require 'test_helper'

class CandiatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get candiates_new_url
    assert_response :success
  end

  test "should get create" do
    get candiates_create_url
    assert_response :success
  end

end
