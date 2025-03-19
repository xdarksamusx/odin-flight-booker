class AddMissingReferencesToFlightsAndBookings < ActiveRecord::Migration[8.0]
  def change
    change_table :flights do |t|
      t.references :aircraft, null: false, foreign_key: true
    end

    change_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flight, null: false, foreign_key: true
    end
  end
end
