class BookingsController < ApplicationController


  def create
    @cat = Cat.find(params[:cat_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.cat = @cat
    @booking.user = current_user
    unless @booking.commitment
      flash[:alert] = "D'accord pour le paiement sur place à l'arrivée ?"
      render "cats/show" and return
    end
    if
      @booking.save!
      flash[:alert] = "Votre demande a bien été enregistrée. C'est maintenant au propriétaire de vous dire s'il l'accepte ou non"
      redirect_to cat_path(@cat)
    else
      render "cats/show"
    end
end

  def validate
    @booking = Booking.find(params[:id])
    @booking.commitment(booking_params)
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :number_of_half_days, :commitment)
  end
end
