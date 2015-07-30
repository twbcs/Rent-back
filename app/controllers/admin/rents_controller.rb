class Admin::RentsController < Admin::AdminController
  before_action :page, only: [:new, :edit]

  def new
    @rent = Rent.new(period: params[:period], cartype: params[:cartype])
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      redirect_to new_admin_rent_path(period: @rent.period, cartype: @rent.cartype)
    else
      render :new
    end
  end

  def edit
    @rent = Rent.find(params[:id])
  end

  def update
    @rent = Rent.find(params[:id])
    if @rent.update(rent_params)
      redirect_to new_admin_rent_path(period: @rent.period, cartype: @rent.cartype)
    else
      render :edit
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
  end

  private

  def rent_params
    params.require(:rent).permit(:picture, :description, :sort, :brand, :color, :model_no, :pay, :period, :cartype, :displacement)
  end

  def page
    params[:page] ? page = params[:page].to_i : page = 1
    page == 1 ? offset = 0 : offset = (page - 1) * 5
    temp = Rent.where(cartype: params[:cartype], period: params[:period]).size
    (temp % 5) > 0 ? temp2 = 1 : temp2 = 0
    @pages = temp / 5 + temp2
    @rents = Rent.where(cartype: params[:cartype], period: params[:period]).offset(offset).limit(5)
  end
end
