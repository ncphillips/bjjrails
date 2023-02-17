# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Gym < ApplicationRecord
  has_many :gym_memberships
  has_many :users, through: :gym_memberships

  alias_method :members, :users
end
