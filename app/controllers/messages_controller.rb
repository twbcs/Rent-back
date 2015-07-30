class MessagesController < ApplicationController
  before_action :min_ad

  def index
    @messages = Message.all.order(date: :DESC)
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def min_ad
    @min_ad = Advert.where(ad_model: 1)
  end
end
