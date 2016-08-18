class RemoveCandidateIdFromLangScoreTiers < ActiveRecord::Migration[5.0]
  def change
    remove_column :lang_score_tiers, :candidate_id, :integer
  end
end
