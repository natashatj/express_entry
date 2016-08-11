class RemoveSkillFromLangTestData < ActiveRecord::Migration[5.0]
  def change
    remove_column :lang_test_data, :skill_level, :string
  end
end
