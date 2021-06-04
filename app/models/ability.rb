# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    if user.is_admin?
      can :manage, :all
    end

    can(:crud, Pet) do |pet|
      pet.user == user 
    end

    can(:crud, Review) do |review|
      review.user == user || review.pet.user == user
    end
  end
end
