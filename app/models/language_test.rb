class LanguageTest < ApplicationRecord
	has_many :lang_score_tiers
	has_many :lang_test_data

end
