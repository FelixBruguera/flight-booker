class FlightsController < ApplicationController
    def index
        @flights = Flight.all.order('date')
        @airports = Airport.all.map {|ap| [ap.name, ap.id]}
        @dates = @flights.map {|flight| [flight.date.strftime('%F'), flight.date]}.uniq {|flight| flight.first}
        @tickets = (1..4).to_a
        unless params.empty?
            search_params = flight_params.except(:tickets, :commit)
            @results = Flight.where(search_params)
        end
    end

    def search
        search_params = flight_params.except(:commit)
        @flights = Flight.where(search_params)
    end

    private

    def flight_params
        params.permit(:departure_airport, :arrival_airport, :tickets, :date, :commit)
    end

end
