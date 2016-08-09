require 'test_helper'

class PersonalPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get personal_page_home_url
    assert_response :success
  end

end
