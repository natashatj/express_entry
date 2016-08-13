class AddIsMarriedToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :is_married, :boolean, default: false
  end
end
