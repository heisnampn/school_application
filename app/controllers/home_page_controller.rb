class HomePageController < ApplicationController

  def home
  	@performance_types = policy_scope(PerformanceType).order(:id)
  	@students = policy_scope(User)
    @rating = policy_scope(StudentRating)
  end

end
