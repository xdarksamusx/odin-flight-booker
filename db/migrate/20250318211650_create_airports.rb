class CreateAirports < ActiveRecord::Migration[8.0]
  def change
    create_table :airports do |t|
      t.string :airport_name
      t.string :city_address
      t.string :country

      t.timestamps
    end
  end
end
