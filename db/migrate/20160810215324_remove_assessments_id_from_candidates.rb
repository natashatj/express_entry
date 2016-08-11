class RemoveAssessmentsIdFromCandidates < ActiveRecord::Migration[5.0]
  def change
  	remove_column :candidates, :assessments_id, :integer
  end
end
