class RemoveSeatNumberFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :seat_number, :integer
  end
end
