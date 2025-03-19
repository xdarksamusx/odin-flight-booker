class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :address, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :seat_number, :integer
  end
end
