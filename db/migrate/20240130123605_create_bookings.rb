class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passengers
      t.timestamps
    end
  end
end
