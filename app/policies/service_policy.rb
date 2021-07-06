class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      return true
    end
  
    def show?
      return true
    end
  
    def destroy?
      record.user == user 
    end
  
    def update?
      record.user == user 
    end

  end

end
