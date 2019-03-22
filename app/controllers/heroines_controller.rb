class HeroinesController < ApplicationController
  def index
    @powers = Power.all
    @heroines = Heroine.search(params[:search])
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(params.require(:heroine).permit(:name, :super_name, :power_id))
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end



end
