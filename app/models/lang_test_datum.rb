class LangTestDatum < ApplicationRecord
	belongs_to :lang_score_tier
	belongs_to :language_test
	has_and_belongs_to_many :candidates

end
