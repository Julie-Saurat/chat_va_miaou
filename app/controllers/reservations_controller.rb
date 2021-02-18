class ReservationsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])

    

  end
end
