class AddSeatNumberToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :seat_number, :integer
  end
end
