class ReflectionsController < ApplicationController

  def index
    @reflections = Reflection.order(:id)
  end

  def new
    @reflection = Reflection.new
    render :new
  end

  def create
    @reflection = Reflection.new params.require(:reflection).permit(:answer1, :answer2, :answer3)
    if @reflection.save
      redirect_to @reflection, notice: "Your reflection has been submitted."
    else
      render :new
    end
  end

  def show
    @reflection = Reflection.find params[:id]
  end

end
