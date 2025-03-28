class AddAirportReferencesToFlights < ActiveRecord::Migration[8.0]
  def change

    change_table :flights do |t|
      t.references :departure_airport, null:false ,foreign_key: {to_table: :airports}
      t.references :arrival_airport, null: false, foreign_key: {to_table: :airports}
    end
    
  
  end
end
