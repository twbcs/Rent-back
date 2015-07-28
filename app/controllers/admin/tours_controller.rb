class Admin::ToursController < Admin::AdminController
  def index
    @tours = Tour.where(day: params[:day])
    @tour = Tour.new
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      respond_to :js
    else
      render :new
    end
  end

  def edit
    @tours = Tour.where(day: params[:day])
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    if @tour.update(tour_params)
      respond_to :js
    else
      render :edit
    end
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
