class CatsController < ApplicationController
  def index
    @cats = policy_scope(Cat)

  end
end
