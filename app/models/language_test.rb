class LanguageTest < ApplicationRecord
	has_many :lang_score_tiers
  has_many :candidates, through: :lang_score_tiers

end
