class CreateLangTestData < ActiveRecord::Migration[5.0]
  def change
    create_table :lang_test_data do |t|
    	t.references :language_test
    	t.references :lang_score_tier
    	t.references :candidate
      t.string :skill_level

      t.timestamps
    end
  end
end
