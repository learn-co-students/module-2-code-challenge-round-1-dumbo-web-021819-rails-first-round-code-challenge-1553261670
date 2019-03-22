class HeroinesController < ApplicationController
  def index
    # if params[:power]
    #   @heroines = Heroine.where('power LIKE ?', "%#{params[:power]}%")
    # else
      @heroines = Heroine.all
    # end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(get_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      render :new
    end
  end

  private

  def get_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def search

  end

end
