class StudentRatingsController < ApplicationController

  before_action :set_student	

  def new
  	@rating = StudentRating.new
  end

  def create
    @rating = StudentRating.find_or_initialize_by(user: @student)
    authorize  @rating
    if @rating.update(student_rating_params)
      redirect_to root_path, notice: 'Student has been successfully rated'  
    else
      render new
    end
  end

  private

  def set_student
    @student = User.find(params[:user_id])
  end

  def build_student_rating
    @student.student_rating
  end	

  def student_rating_params
    params.require(:student_rating).permit(:rating)
  end 
end