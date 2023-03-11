class GymsController < ApplicationController
  before_action :authenticate_user!

  attr_accessor :gyms, :gym

  def index
    @gyms = Gym.all    
  end

  def show
    @gym = Gym.find_by(id: params[:id])
  end
end
