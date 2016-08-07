class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.integer :country_number
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
