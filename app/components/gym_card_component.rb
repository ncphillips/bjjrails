# frozen_string_literal: true
class GymCardComponent < ApplicationComponent
  attr_accessor :gym

  def initialize(gym:)
    @gym = gym
  end
end
