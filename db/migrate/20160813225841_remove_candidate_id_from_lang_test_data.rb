class RemoveCandidateIdFromLangTestData < ActiveRecord::Migration[5.0]
  def change
    remove_column :lang_test_data, :candidate_id, :integer
  end
end
