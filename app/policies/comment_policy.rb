class CommentPolicy < ApplicationPolicy
  def create?
    user&.id
  end

  def destroy?
    article = record.article
    user&.id == record.user.id || (article && user&.id == article.user.id)
  end
end
