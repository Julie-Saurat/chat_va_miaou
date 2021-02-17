class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cat, only: [:show]

  def show
    authorize @cat
    @booking = Booking.new
  end

  def index
    @cats = policy_scope(Cat)
  end
  
  private

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
