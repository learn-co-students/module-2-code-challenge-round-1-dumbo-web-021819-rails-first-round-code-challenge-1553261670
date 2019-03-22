class PowersController < ApplicationController
  before_action :find_by_params, only:[:show, :edit, :update]


  def index
    @powers = Power.all
  end

    def show
  	
  end

  def edit
  	binding.pry
  end

  def create
  	binding.pry
  end


private

def find_by_params
	@power = Power.find(params[:id])
end


end
