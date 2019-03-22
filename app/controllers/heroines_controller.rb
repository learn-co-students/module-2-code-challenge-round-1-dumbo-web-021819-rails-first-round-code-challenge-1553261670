class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(hero_params)
    redirect_to heroines_path
  end

  private

  def hero_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
