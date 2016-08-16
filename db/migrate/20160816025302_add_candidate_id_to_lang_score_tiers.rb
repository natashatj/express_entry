class AddCandidateIdToLangScoreTiers < ActiveRecord::Migration[5.0]
  def change
  	add_reference :lang_score_tiers, :candidate, foreign_key: true
  end
end
