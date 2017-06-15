class CreativeEscapePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  def update?
    user.admin #== true || user == record.user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user #== admin
  end



  end
end
