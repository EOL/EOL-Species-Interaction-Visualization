class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    
    user ||= User.new # guest user

    # by default, we'll let users do anything, then selectively remove permissions as needed
    can :manage, :all
      
    if user.role? :editor # editor role cannot delete anything
      cannot :destroy, :all
    end
    
    if user.role? :data_entry # data_entry role cannot update or delete
      cannot [:destroy,:update], :all
    end
    
    if user.no_role? # if we have no role, then remove the ability to delete, update, create or export
      cannot [:destroy,:update,:create], :all
    end
    
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
 
  end
  
end
