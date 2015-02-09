class CommentsController < ApplicationController

  def new
    @comment = Comment.new  
  end

  def create
    comment = Comment.create comment_params
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

end