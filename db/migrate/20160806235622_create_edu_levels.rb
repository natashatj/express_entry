class CreateEduLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :edu_levels do |t|
      t.string :name_of_edu_level
      t.boolean :tier_w_prof
      t.boolean :tier_no_prof
      t.string :number_creds

      t.timestamps
    end
  end
end
