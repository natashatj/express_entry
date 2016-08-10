require 'test_helper'

class PersonalPageControllerTest < ActionDispatch::IntegrationTest
  test "should get submit" do
    get personal_page_submit_url
    assert_response :success
  end

end
