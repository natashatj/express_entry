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
      t.boolean :bac_is_pro?, default: false
      t.boolean :is_user?, default: false
      t.text :kids
      t.boolean :frg_work_xp_one_or_two, default: false
      t.boolean :frg_work_xp_three_or_more, default: false
      t.boolean :cdn_xp_visited, default: false
      t.boolean :cdn_xp_fr_en_studies, default: false
      t.boolean :cdn_xp_ps_greater_than_one, default: false
      t.boolean :cdn_xp_work_greater_than_one, default: false
      t.boolean :cdn_xp_work_permit_paid, default: false
      t.boolean :cdn_xp_study_perm_dli, default: false
      t.boolean :cdn_xp_none, default: false
      t.boolean :cdn_xp_one_yr, default: false
      t.boolean :cdn_xp_one_or_more, default: false
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
