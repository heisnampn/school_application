class PerformanceTypePolicy < ApplicationPolicy

  def update?
    user.head_master?
  end

  class Scope < Scope
    def resolve
      return super if user.head_master? 
      scope.none
    end
  end
end