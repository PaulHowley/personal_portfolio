class Admin::ArticlesController < Admin::ApplicationController
  def index
    @articles = Article.all 
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to admin_articles_path, alert: 'You have successfully created a new article!'
      # This approach works but had to change the flash notice in the view to flash.alert not flash.ntoice
    else
      render 'new'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to admin_articles_path, alert: 'Article updated successfully!'
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_articles_path, alert: "You have successfully deleted the article!"
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
end