class Admin::ToursController < Admin::AdminController
  before_action :page, only: [:new, :edit]

  def new
    @tour = Tour.new(day: params[:day])
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

  def page
    params[:page] ? page = params[:page].to_i : page = 1
    page == 1 ? offset = 0 : offset = (page - 1) * 5
    temp = Tour.where(day: params[:day]).size
    (temp % 5) > 0 ? temp2 = 1 : temp2 = 0
    @pages = temp / 5 + temp2
    @tours = Tour.where(day: params[:day]).offset(offset).limit(5)
  end
end
