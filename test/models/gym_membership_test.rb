# == Schema Information
#
# Table name: gym_memberships
#
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gym_id     :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_gym_memberships_on_gym_id_and_user_id  (gym_id,user_id)
#  index_gym_memberships_on_user_id_and_gym_id  (user_id,gym_id)
#
require "test_helper"

class GymMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
