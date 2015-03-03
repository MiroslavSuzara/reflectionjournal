class CommentsController < ApplicationController

  def create
    @reflection = Reflection.find params[:reflection_id] 
    @comment = Comment.new comment_params
    @comment.reflection = @reflection
    respond_to do |format|
      if @comment.save
        format.html { redirect_to question_path(@comment.reflection), notice: "Comment added" }
        format.js   { render }
      else
        format.js { render }
      end
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.reflection, notice: "comment deleted!" }
      format.js   { render }
    end
  end

  def index
  end

  def new
  end

  def show
    @comment = Comment.find params[:id]
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
