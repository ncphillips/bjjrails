class Gym < ApplicationRecord
  has_many :gym_memberships
  has_many :users, through: :gym_memberships

  alias_method :members, :users
end
