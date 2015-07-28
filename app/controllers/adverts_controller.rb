class AdvertsController < ApplicationController
  def index
    @ads = Advert.all
  end

  def show
    @ad = Advert.find(params[:id])
  end
end
