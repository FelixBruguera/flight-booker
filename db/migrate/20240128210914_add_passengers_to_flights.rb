class AddPassengersToFlights < ActiveRecord::Migration[7.1]
  def change
    add_column :flights, :passengers, :integer
  end
end
