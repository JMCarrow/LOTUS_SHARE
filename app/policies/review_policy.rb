class ReviewPolicy < ApplicationPolicy
  def create?
    true
  end

  def destroy?
    true
  end

  def update?
    true
  end

  class Scope < Scope
      # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
