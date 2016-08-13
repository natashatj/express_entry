class FrgWorkXpNoneCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :frg_work_xp_none, :boolean, default: false
  end
end
