class CommentsController < ApplicationController

  def create
    @reflection = Reflection.find params[:reflection_id] 
    @comment = Comment.new comment_params
    @comment.reflection = @reflection
    @comment.user = current_user
      
    if @comment.save
      flash[:notice] = "Your Comment has been created!"
      redirect_to @comment.reflection
    else
      flash[:notice] = "Please correct your errors below!"
      redirect_to @comment.reflection
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to @comment.reflection, notice: "Your Comment was deleted!"
  end

  def index
  end

  def new
  end

  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
