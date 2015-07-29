class Admin::NewsController < Admin::AdminController
  before_action :page, only: [:new, :edit]

  def new
    @new = New.new
  end

  def create
    @new = New.new(new_params)
    if @new.save
      respond_to :js
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
      respond_to :js
    else
      render :edit
    end
  end

  def destroy
    @new = New.find(params[:id])
    @new.destroy
  end

  private

  def new_params
    params.require(:new).permit(:title, :description, :date)
  end

  def page
    params[:page] ? page = params[:page].to_i : page = 1
    page == 1 ? offset = 0 : offset = (page - 1) * 5
    temp = New.all.size
    (temp % 5) > 0 ? temp2 = 1 : temp2 = 0
    @page = temp / 5 + temp2
    @news = New.all.offset(offset).limit(5)
  end
end
