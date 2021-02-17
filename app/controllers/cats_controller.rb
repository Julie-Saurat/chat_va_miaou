class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cat, only: [:show]

  def show
    authorize @cat
    @booking = Booking.new
  end

  def index
    @cats = policy_scope(Cat)

    @markers = @cats.geocoded.map do |cat|
      {
        lat: cat.latitude,
        lng: cat.longitude
      }
    end
  end

  def new
    @cat = Cat.new
    authorize @cat
  end

  def create
    @cat = Cat.new(cat_params)
    authorize @cat
    @cat.user = current_user
    @cat.save
    redirect_to cat_path(@cat)
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :gender, :neutered, :description, :color, :diet, :hair_length, :breed, :price_per_half_day, :city, :tag, photos: [])
  end
end
