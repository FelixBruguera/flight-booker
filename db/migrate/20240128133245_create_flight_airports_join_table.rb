class CreateFlightAirportsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :flight_airports do |t|
      t.integer :departure_airport
      t.integer :arrival_airport
      t.integer :flight_id
    end
    add_foreign_key :flight_airports, :airports, column: :departure_airport
    add_foreign_key :flight_airports, :airports, column: :arrival_airport
    add_foreign_key :flight_airports, :flights, column: :flight_id
  end
end
