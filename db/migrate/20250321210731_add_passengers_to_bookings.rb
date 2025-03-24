class AddPassengersToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :number_of_passengers, :integer
  end
end
