class RemoveSeatNumberFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_column :bookings, :seat_number, :integer
  end
end
