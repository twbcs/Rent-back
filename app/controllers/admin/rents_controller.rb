class Admin::RentsController < Admin::AdminController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save

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
end
