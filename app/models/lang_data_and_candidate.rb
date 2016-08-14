class LangDataAndCandidate < ApplicationRecord
  belongs_to :candidates
  belongs_to :lang_test_data
end
