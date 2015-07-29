class Admin::ArticlesController < Admin::AdminController

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
