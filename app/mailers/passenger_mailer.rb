class PassengerMailer < ApplicationMailer
    default from: 'bookings@example.com'

    def welcome_email
        @user = params[:user]
        @booking = params[:booking]
        @url = "localhost:3000/bookings/#{@booking.id}"
        mail(to: @user.email, subject:'Your booking was successfully created')
    end
end
