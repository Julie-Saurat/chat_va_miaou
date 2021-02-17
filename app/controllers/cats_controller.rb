class CatsController < ApplicationController
before_action :set_cat, only: [:show]

  def show
    authorize @cat
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

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
