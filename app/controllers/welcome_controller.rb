class WelcomeController < ApplicationController
  before_action :min_ad

  def index
    @big_ad = Advert.where(ad_model: 1)
    @tour1 = Tour.where(day: 1).order(:soft).limit(3)
    @tour2 = Tour.where(day: 2).order(:soft).limit(3)
    @tour3 = Tour.where(day: 3).order(:soft).limit(3)
    @tour4 = Tour.where(day: 4).order(:soft).limit(3)
    @tour5 = Tour.where(day: 5).order(:soft).limit(3)
    @room = Article.find(id: 1)
    @messages = Message.where("date <= ?", DateTime.now )order(date: DESC).limit(5)
  end

  def contact
    @response = Response.new
  end

  private

  def min_ad
    @min_ad = Advert.where(ad_model: 1)
  end
end
