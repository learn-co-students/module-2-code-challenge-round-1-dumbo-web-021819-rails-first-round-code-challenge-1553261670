class PowersController < ApplicationController
  
  def index
    @powers = Power.all
  end

  def show 
    get_power
  end

  private 

  def get_power
    @power = Power.find(params[:id])
  end

end
