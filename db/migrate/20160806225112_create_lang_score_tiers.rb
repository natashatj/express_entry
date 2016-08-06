class CreateLangScoreTiers < ActiveRecord::Migration[5.0]
  def change
    create_table :lang_score_tiers do |t|
    	t.references :language_test
      t.string :name_score
      t.integer :clb


      t.timestamps
    end
  end
end
