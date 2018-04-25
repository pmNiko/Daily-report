class ClaimPolicy < ApplicationPolicy

  def index?
    user.present?
  end

  def show?
    user.present?
  end

  def create?
    user.has_role? :admin
  end

  def new?
    user.has_role? :admin
  end

  def update?
    false
  end

  def edit?
    user.has_role? :admin
  end

  def destroy?
    user.has_role? :admin
  end

end
