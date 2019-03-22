class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def search
    @power = Power.find_by(name: params[:q].downcase)
    # Parameters {"utf8"=>"✓", "q"=>"test", "commit"=>"Search", "controller"=>"powers", "action"=>"search"} permitted: false>
  end
end
