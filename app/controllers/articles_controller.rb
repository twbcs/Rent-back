class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @response = Response.new(title: @article.title)
  end
end
