# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_30_195115) do
  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tickets"
  end

  create_table "flight_airports", force: :cascade do |t|
    t.integer "departure_airport"
    t.integer "arrival_airport"
    t.integer "flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "departure_id"
    t.integer "arrival_id"
    t.datetime "date"
    t.integer "minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "passengers"
  end

  create_table "passengers", force: :cascade do |t|
    t.integer "booking_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flight_airports", "airports", column: "arrival_airport"
  add_foreign_key "flight_airports", "airports", column: "departure_airport"
  add_foreign_key "flight_airports", "flights"
  add_foreign_key "flights", "airports", column: "arrival_id"
  add_foreign_key "flights", "airports", column: "departure_id"
end
