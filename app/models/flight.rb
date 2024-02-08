class Flight < ApplicationRecord
    has_one :departure_airport, foreign_key: :id, primary_key: :departure_id,  class_name: 'Airport'
    has_one :arrival_airport,  foreign_key: :id, primary_key: :arrival_id, class_name: 'Airport'
    has_many :bookings
    
end
