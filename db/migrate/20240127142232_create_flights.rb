class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :departure_id
      t.integer :arrival_id
      t.timestamp :date
      t.integer :minutes
      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :departure_id
    add_foreign_key :flights, :airports, column: :arrival_id
  end
end
