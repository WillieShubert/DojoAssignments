class DojosController < ApplicationController
  def index
    @total_dojos = Dojo.count(:all)
    @dojos = Dojo.all

  end
  def new
  end
  def create
    Dojo.create(dojo_params)
    redirect_to '/dojos'
  end
  def show
    @dojo = Dojo.find(params[:id])
    @students = @dojo.students
  end
  def edit
    @dojo = Dojo.find(params[:id])
  end
  def update
    dojo = Dojo.find(params[:id])
    if dojo.update(dojo_params)
      redirect_to '/dojos'
    else flash[:errors] = dojo.errors.full_messages
      redirect_to :back
    end
  end
  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to '/dojos'
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
