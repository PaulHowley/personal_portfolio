class Admin::ArticlesController < Admin::ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all 
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to admin_articles_path, status: :found, notice: 'You have successfully created a new article!'
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def new
    @article = Article.new
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to admin_articles_path, status: :found, notice: 'Article updated successfully!'
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to admin_articles_path, status: :found, notice:  "You have successfully deleted the article!"
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end