class AddColumnCdnXpYearsToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :cdn_xp_years, :string
  end
end
