class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new comment_params
    comment.creator = @current_user
    comment.user_id = params[:comment][:user_comment_page_id]
    comment.save
    redirect_to comment.user
  end

  def edit
  end

  def show
    @comment = Comment.find params[:id]
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :creator_id, :search)
  end

end
