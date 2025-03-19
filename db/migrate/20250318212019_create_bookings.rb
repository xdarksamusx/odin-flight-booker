class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.integer :seat_number
      t.string :booking_status

      t.timestamps
    end
  end
end
