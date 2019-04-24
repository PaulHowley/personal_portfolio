class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    if @comment.save
      redirect_to article_comment_path(@comment.article), alert: 'You have successfully added a new comment!'
    else
      render 'new'
    end

    
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end