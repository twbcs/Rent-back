class Admin::AdvertsController < Admin::AdminController
  def index
    @ads = Advert.all
  end

  def new
    @ad = Advert.new
  end

  def create
    @ad = Advert.new(ad_params)
    if @ad.save
      respond_to :js
    else
      render :new
    end
  end

  def edit
    @ad = Advert.find(params[:id])
  end

  def update
    @ad = Advert.find(params[:id])
    if @ad.update(ad_params)
      respond_to :js
    else
      render :edit
    end
  end

  def destroy
    @ad = Advert.find(params[:id])
    @ad.destroy

  end

  private

  def ad_params
    params.require(:advert).permit(:picture, :title, :link, :ad_model)
  end
end
