class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # record = object (@restaurant)
    # user = current_user
    record.user == user
  end

  def create?
    user
  end

  def destroy?
    update?
  end
end
