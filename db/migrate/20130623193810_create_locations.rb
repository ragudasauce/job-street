class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :id
      t.string :street
      t.string :city
      t.string :state
      t.string :province
      t.string :country
      t.integer :zip
      t.string :geo_cords

      t.timestamps
    end
  end
end
