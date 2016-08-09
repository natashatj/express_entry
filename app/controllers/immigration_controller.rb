class ImmigrationController < ApplicationController
  def home
    @edu_levels = EduLevel.all
    @languages = LanguageTest.limit(2)
    @language_tests = LanguageTest.all
    @french_language_tests = LanguageTest.where("language = 'French'")
    @english_language_tests = LanguageTest.where("language = 'English'")
  end
end
