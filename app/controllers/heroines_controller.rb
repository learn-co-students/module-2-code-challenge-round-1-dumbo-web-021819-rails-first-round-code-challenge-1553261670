class HeroinesController < ApplicationController
  
  def index
    @heroines = Heroine.search(params[:search])
  end

  def show 
    get_heroine
  end

  def new 
    @heroine = Heroine.new 
  end

  def create
    @heroine = Heroine.create(heroine_params)
      if @heroine.valid? 
        redirect_to @heroine 
      else render :new
    end
  end





  private 
  def get_heroine 
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  
  end

end
