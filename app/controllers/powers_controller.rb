class PowersController < ApplicationController

before_action :get_power, only: [:show, :edit, :update, :destroy]

def index
  @powers = Power.all
end

def new
  @power = Power.new
end

def create
  @power = Power.create(power_params)
end

def show
end

def edit
end

def update
 @power.update(power_params)
 redirect_to power_path(@power)
end

def destroy
 @power.destroy
 redirect_to powers_path
end




private

def get_power
  @power = Power.find(params[:id])
end

def power_params
  params.require(:power).permit(:name, :description)
end
end
