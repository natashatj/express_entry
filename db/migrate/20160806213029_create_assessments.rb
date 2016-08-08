class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.references :user
      t.integer :points
      t.string :primary_age
      t.string :primary_edu
      t.string :primary_first_lang
      t.string :primary_second_lang
      t.string :primary_cdn_work
      t.string :secondary_edu
      t.string :secondary_first_lang
      t.string :secondary_cdn_work
      t.string :adapt_ed_lang
      t.string :adapt_ed_cdn_xp
      t.string :adapt_frg_xp_lang
      t.string :adapt_trade_cert_lang
      t.timestamps
    end
  end
end
