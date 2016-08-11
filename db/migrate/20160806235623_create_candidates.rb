class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.references :assessments
      t.references :edu_level
      t.references :country
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :occupation
      t.integer :funds
      t.boolean :bac_is_pro?
      t.boolean :is_user?
      t.text :kids
      t.boolean :frg_work_xp_one_or_two
      t.boolean :frg_work_xp_three_or_more
      t.boolean :cdn_xp_visited
      t.boolean :cdn_xp_fr_en_studies
      t.boolean :cdn_xp_ps_greater_than_one
      t.boolean :cdn_xp_work_greater_than_one
      t.boolean :cdn_xp_work_permit_paid
      t.boolean :cdn_xp_study_perm_dli
      t.boolean :cdn_xp_none
      t.boolean :cdn_xp_one_yr
      t.boolean :cdn_xp_one_or_more
      t.integer :points

      t.timestamps
    end
  end
end
