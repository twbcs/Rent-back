class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])

    @response = Response.new(title: @article.title)
  end

end
