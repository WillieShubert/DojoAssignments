class StudentsController < ApplicationController
  def index
  end

  def new
    @dojo = Dojo.find(params[:id])
    @dojos = Dojo.all.where("id != ?", params[:id])
  end

  def show
    @dojo = Dojo.find(params[:id])
    @student = Student.find(params[:sid])
    @cohort = @dojo.students.where("id != ?" , params[:sid])
  end

  def edit
    @student = Student.find(params[:sid])
    @dojo = Dojo.find(params[:id])
    @dojos = Dojo.all.where("id != ?", params[:id])
  end

  def create
    if Student.create(student_params)
      redirect_to '/dojos'
    else flash[:errors] = student.errors.full_messages
      redirect_to :back
    end
  end

  def update
    student = Student.find(params[:sid])
    if student.update(student_params)
      redirect_to '/dojos'
    else flash[:errors] = student.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    student = Student.find(params[:sid])
    student.destroy
    redirect_to '/dojos'
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end

end
