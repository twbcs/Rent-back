class Admin::ResponsesController < Admin::AdminController
  def index
    @responses = Response.all
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      respond_to :js
    else
      render :new
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])
    if @response.update(response_params)
      respond_to :js
    else
      render :edit
    end
  end

  def show
    @response = Response.find(params[:id])
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
  end

  private

  def response_params
    params.require(:response).permit(:title, :name, :sex, :phone, :email, :sent, :post)
  end
end
