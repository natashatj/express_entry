class LangScoreTier < ApplicationRecord
	belongs_to :language_test
	has_many :lang_test_data

end