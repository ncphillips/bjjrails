# frozen_string_literal: true
class GymCardComponent < ViewComponent::Base
  attr_accessor :gym

  def initialize(gym:)
    @gym = gym
  end
end
