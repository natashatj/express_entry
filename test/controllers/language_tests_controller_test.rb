require 'test_helper'

class LanguageTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get test_evaluation" do
    get language_tests_test_evaluation_url
    assert_response :success
  end

end
