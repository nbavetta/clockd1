class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Timecard, user_id: user.id
  end
end
