class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.integer :booking_id
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
