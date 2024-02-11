class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        params[:tickets].to_i.times do
            @booking.passengers.build
        end
    end

    def create
        @booking = Booking.create(booking_params)
        @booking.passengers.each do |passenger|
        PassengerMailer.with(user: passenger, booking: @booking).welcome_email.deliver_now
        end
        redirect_to @booking
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :tickets, :passengers_attributes => {})
    end
end
