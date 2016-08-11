class DeleteForeignKeysFromCandidates < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :assessment_id
  end
end
