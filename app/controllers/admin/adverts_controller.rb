class Admin::AdvertsController < Admin::AdminController
  skip_before_action :verify_authenticity_token

  def index
    @ad = Advert.new(ad_model: params[:ad_model])
    @ads = Advert.where(ad_model: params[:ad_model])
  end

  def new
    params[:page] ? page = params[:page].to_i : page = 1
    page == 1 ? @offset = 0 : @offset = ( page - 1 ) * 5
    @ad = Advert.new(ad_model: params[:ad_model])
    ads_temp = Advert.where(ad_model: params[:ad_model]).size
    (ads_temp % 5) > 0 ? ads_temp2 = 1 : ads_temp2 = 0
    @ads_page = ads_temp / 5 + ads_temp2
    @ads = Advert.where(ad_model: params[:ad_model]).offset(@offset).limit(5)
  end

  def create
    @ad = Advert.new(ad_params)
    if @ad.save
      redirect_to new_admin_advert_path(ad_model: @ad.ad_model)
    else
      render :new
    end
  end

  def edit
    @ad = Advert.find(params[:id])
    @ads = Advert.where(ad_model: @ad.ad_model)
  end

  def update
    @ad = Advert.find(params[:id])
    if @ad.update(ad_params)
      redirect_to new_admin_advert_path(ad_model: @ad.ad_model)
    else
      render :edit
    end
  end

  def destroy
    @ad = Advert.find(params[:id])
    @ad.destroy
    redirect_to new_admin_advert_path(ad_model: @ad.ad_model)
  end

  private

  def ad_params
    params.require(:advert).permit(:picture, :title, :link, :ad_model)
  end
end
