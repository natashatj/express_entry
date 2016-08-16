class DropLangTestData < ActiveRecord::Migration[5.0]
  def change
  	drop_table :lang_test_data do |t|
  		t.references language_test_id
  		t.references lang_score_tier_id
  		t.timestamps null: false
  	end

  end
end
