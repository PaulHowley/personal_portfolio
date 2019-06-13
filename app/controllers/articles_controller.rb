class ArticlesController < ApplicationController
  def index
    @articles = Article.all 
  end
  
  def show
    @article = Article.includes(:comments).find(params[:id])

    @comment = Comment.new
  end
end
