class RemoveColumnCdnXpOneOrMoreFromCandidates < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :cdn_xp_one_or_more, :boolean
  end
end
