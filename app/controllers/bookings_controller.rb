class BookingsController < ApplicationController

  def create
    @cat = Cat.find(params[:cat_id])
    @booking = Booking.new(booking_params)
    @booking.cat = @cat
    @booking.user = current_user
    if 
      @booking.save!
      redirect_to cats_path
    else
      redirect_to cat_path(@cat)
    end
end

  def validate
  end
  
private

  def booking_params
    params.require(:booking).permit(:start_date, :number_of_half_days, :commitment)
  end
end
