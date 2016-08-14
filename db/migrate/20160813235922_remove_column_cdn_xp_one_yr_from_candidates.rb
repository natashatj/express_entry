class RemoveColumnCdnXpOneYrFromCandidates < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :cdn_xp_one_yr, :boolean
  end
end
