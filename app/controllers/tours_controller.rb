class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save

    else
      render :new
    end
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    if @tour.update(tour_params)

    else
      render :edit
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

  end

  private
  def tour_params
    params.require(:tour).permit(:picture, :description, :sort, :short, :day, :title)
  end
end