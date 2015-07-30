class ToursController < ApplicationController
  def index
    @tours = Tour.where(day: params[:day])
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
