class CatsController < ApplicationController
before_action :set_cat, only: [:show]

  def show
    authorize @cat
  end

  def index
    @cats = policy_scope(Cat)
  end
  
  private

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
