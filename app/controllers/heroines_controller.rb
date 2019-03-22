class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      render :new
    end
  end

  # def search
  #   power = Power.find_by(name: params[:q].downcase)
  #   byebug
  #   if power.nil?
  #     redirect_to heroines_path
  #   else
  #     @heroines = Heroine.where(power_id: power.id)
  #     byebug
  #   end
  # end

  private

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
