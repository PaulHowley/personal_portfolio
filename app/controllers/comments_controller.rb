class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)

    if @comment.save
      flash.notice = 'You have successfully added a new comment!'
      redirect_to article_path(@article)
    else
      render :new
    end

  end

  def new
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end