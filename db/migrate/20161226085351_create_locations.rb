class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :country
      t.string :pin

      t.timestamps
    end
  end
end
