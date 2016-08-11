class AddAssessmentIdToCandidates < ActiveRecord::Migration[5.0]
  def change
  	add_column :candidates, :assessment_id, :integer
  end
end
