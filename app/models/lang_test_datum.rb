class LangTestDatum < ApplicationRecord
	belongs_to :lang_score_tier
	belongs_to :language_test
  has_many :lang_data_and_candidate
	has_many :candidates

end
