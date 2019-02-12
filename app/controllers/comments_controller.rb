class CommentsController < ApplicationController
  def build
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)

    if @comment.save
      redirect_to article_path(@article), alert: 'You have successfully added a new comment!'
    else
      render 'new'
    end

    
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
