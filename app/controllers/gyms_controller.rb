class GymsController < ApplicationController
  attr_accessor :gyms

  def index
    @gyms = Gym.all    
  end
end
