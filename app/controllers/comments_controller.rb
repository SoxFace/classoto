class CommentsController < ApplicationController

  def new
    @comment = Comment.new  
  end

  def create
    comment = Comment.new comment_params
    comment.creator_id = @current_user.id
    comment.user_id

    # redirect_to comment.user
    comment.save
    # comment = Comment.create comment_params
    user = User.find params[:comment][:user_comment_page_id]
    redirect_to user
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
    params.require(:comment).permit(:body, :user_id)
  end

end
