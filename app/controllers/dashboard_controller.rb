class DashboardController < ApplicationController

  def index
    @cat = "youhou"
    @cats = policy_scope(Cat)

    
    # @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end

end
