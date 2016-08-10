class ImmigrationController < ApplicationController
  def home
    @edu_levels = EduLevel.all
    @languages = LanguageTest.limit(2)
    @language_tests = LanguageTest.all
    @french_language_tests = LanguageTest.where("language = 'French'")
    @english_language_tests = LanguageTest.where("language = 'English'")
    # @language_test_dropdown = LanguageTest.find(params[:language_tests_id]).test_evaluation
  end
  # def index
  #    @language_test_dropdown = LanguageTest.find(params[:language_tests_id]).test_evaluation
  #   respond_to do |format|
  #     format.json { render :json, @language_test_dropdown }
  #   end
  # end
end
