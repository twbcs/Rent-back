class Admin::ArticlesController < Admin::AdminController

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to edit_admin_article_path(@article)
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:description)
  end
end
