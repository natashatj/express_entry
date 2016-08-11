class AddBackAssessmentIdToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :assessment, foreign_key: true
  end
end
