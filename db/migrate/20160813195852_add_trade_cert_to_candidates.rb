class AddTradeCertToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :trade_cert, :boolean, default: false
  end
end
