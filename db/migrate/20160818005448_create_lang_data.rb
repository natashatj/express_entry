class CreateLangData < ActiveRecord::Migration[5.0]
  def change
    create_table :lang_data do |t|
      t.references :candidate
      t.references :lang_score_tier

      t.timestamps
    end
  end
end
