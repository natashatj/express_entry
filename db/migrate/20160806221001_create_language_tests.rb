class CreateLanguageTests < ActiveRecord::Migration[5.0]
  def change
    create_table :language_tests do |t|
      t.string :language
      t.string :test_evaluation

      t.timestamps
    end
  end
end
