class ReflectionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @reflections = Reflection.all.order("created_at DESC")
  end

  def new
    @reflection = Reflection.new
    render :new
  end

  def create
    @reflection = Reflection.new params.require(:reflection).permit(:answer1, :answer2, :answer3)
    @reflection.user = current_user     

    if @reflection.save
      redirect_to @reflection, notice: "Your reflection has been created."
    else
      render :new
    end
  end

  def destroy
    @reflection = Reflection.find params[:id]
    @reflection.destroy
    redirect_to reflections_path, notice: "Your Reflection was deleted."
  end

  def show
    @reflection = Reflection.find params[:id]
    @comments = @reflection.comments.order("created_at DESC")
  end

  def edit
    @reflection = Reflection.find params[:id]
  end

  def update
    @reflection = Reflection.find params[:id]
    if @reflection.update params.require(:reflection).permit(:answer1, :answer2, :answer3)
      redirect_to @reflection, notice: "Your Reflection was updated."
    else
      render :edit, notice: "Your Reflection was not updated."
    end
  end


end
