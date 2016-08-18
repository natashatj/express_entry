class LangDatum < ApplicationRecord
  belongs_to :candidate
  belongs_to :lang_score_tier
end
