class CreateLangDataAndCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :lang_data_and_candidates do |t|
      t.references :candidate
      t.references :lang_test_data

      t.timestamps
    end
  end
end
