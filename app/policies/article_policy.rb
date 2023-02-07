class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user&.admin? || user&.has_role(:moderator)
        scope.all
      else
        raise Pundit::NotAuthorizedError
      end
    end
  end

  def show?
    true
  end

  def create?
    user&.admin || user&.has_role?(:moderator)
  end

  def update?
    user&.id == record.user.id
  end

  def destroy?
    user&.id == record.user.id
  end
end
