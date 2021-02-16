class CatsController < ApplicationController
before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def show
    authorize @cat
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
