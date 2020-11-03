class StudentRatingPolicy < ApplicationPolicy

  def create?
    user.teacher?
  end

  class Scope < Scope
    def resolve
      return  unless user.student? 

      rating  =  scope.find_by(user_id: user.id)
      return unless rating
      
      PerformanceType.order(max_value: :desc).find_by("max_value <= ?",  rating.rating)
    end
  end

end