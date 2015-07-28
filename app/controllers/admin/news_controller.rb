class Admin::NewsController < Admin::AdminController
  def index
    @news = New.all
  end

  def new
    @new = New.new
  end

  def create
    @new = New.new(new_params)
    if @new.save

    else
      render :new
    end
  end

  def edit
    @new = New.find(params[:id])
  end

  def update
    @new = New.find(params[:id])
    if @new.update(new_params)

    else
      render :edit
    end
  end

  def show
    @new = New.find(params[:id])
  end

  def destroy
    @new = New.find(params[:id])
    @new.destroy

  end

  private
  def new_params
    params.require(:new).permit(:title, :description, :date)
  end
end
