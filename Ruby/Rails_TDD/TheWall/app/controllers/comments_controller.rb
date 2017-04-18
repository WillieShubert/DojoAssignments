class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to '/messages'
    else
      flash[:notice] = @comment.errors.full_messages
      redirect_to '/messages'
    end
  end
  private
  def comment_params
    params.require(:comment).permit( :comment, :user_id, :message_id)
  end

end
