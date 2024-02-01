class FlightAirport < ApplicationRecord
    belongs_to :airport, foreign_key: :departure_airport
    belongs_to :airport, foreign_key: :arrival_airport
    belongs_to :flight, foreign_key: :flight_id
end
