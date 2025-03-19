class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.integer :flight_duration
      t.integer :arrival_flight_number
      t.string :departing_flight_number
      t.integer :departure_datetime
      t.string :arrival_datetime
      t.string :flight_type

      t.timestamps
    end
  end
end
