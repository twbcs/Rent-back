class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def show
    @rent = Rent.find(params[:id])
  end
end
