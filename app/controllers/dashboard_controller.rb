class DashboardController < ApplicationController

  def index
    @cats = policy_scope(Cat)
    @owner_cats = current_user.cats
    @bookings = policy_scope(Booking)
    @owner_cat_reservations = @bookings.select { |booking| @owner_cats.include? booking.cat}
    @user_reservations = @bookings.select { |booking| booking.user == current_user}
    
    # @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end

end
