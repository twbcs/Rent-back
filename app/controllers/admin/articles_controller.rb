class Admin::ArticlesController < Admin::AdminController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      respond_to :js
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      respond_to :js
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:picture, :title, :link, :ad_model)
  end
end
