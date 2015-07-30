class RentsController < ApplicationController
  def index
    @rents = Rent.where(period: params[:period], cartype: params[:cartype])
  end

  def show
    @rent = Rent.find(params[:id])
  end
end
