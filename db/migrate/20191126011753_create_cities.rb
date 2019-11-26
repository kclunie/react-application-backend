class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :trip_id
      t.string :location
      t.string :hotel
      t.string :restaurants
      t.string :activities

      t.timestamps
    end
  end
end
