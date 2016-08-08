class LanguageTest < ApplicationRecord
	has_many :lang_score_tiers
	has_many :lang_test_data

	def self.create_lang_eval
		LanguageTest.create language: "French", test_evaluation: "Informal"
		LanguageTest.create language: "French", test_evaluation: "TEFL"
		LanguageTest.create language: "English", test_evaluation: "CELPIP"
		LanguageTest.create language: "English", test_evaluation: "IELTS"
		LanguageTest.create language: "English", test_evaluation: "Informal"
	
	end
end
