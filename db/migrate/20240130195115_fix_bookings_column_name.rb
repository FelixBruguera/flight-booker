class FixBookingsColumnName < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :passengers
    add_column :bookings, :tickets, :integer
  end
end
