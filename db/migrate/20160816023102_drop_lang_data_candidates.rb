class DropLangDataCandidates < ActiveRecord::Migration[5.0]
  def change
  	drop_table :lang_data_and_candidates do |t|
			t.references  :candidate_id
		  t.references  :lang_test_data_id
		end
  end
end
