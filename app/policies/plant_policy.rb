class PlantPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def destroy?
    true
  end

  def update?
    true
  end

  def available?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
