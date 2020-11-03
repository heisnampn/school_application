class UserPolicy < ApplicationPolicy

	class Scope < Scope
    def resolve
      if user.teacher?
      	Role.find_by(name: 'Student').users 
      else	
        scope.none 
      end  	
    end
  end

end
