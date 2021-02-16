class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @cats = policy_scope(Cat)

  end
end
