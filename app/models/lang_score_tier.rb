class LangScoreTier < ApplicationRecord
  belongs_to :language_test
  has_many :lang_data
  has_many :candidates, through: :lang_data
	

end