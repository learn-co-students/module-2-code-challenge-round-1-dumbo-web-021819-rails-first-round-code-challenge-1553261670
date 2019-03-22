class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end



  private

  def heroine_params
    params.require(:heroine).permit(:id, :name, :super_name, :power_id)
  end



end
