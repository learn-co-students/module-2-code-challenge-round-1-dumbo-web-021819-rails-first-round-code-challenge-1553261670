class HeroinesController < ApplicationController
  before_action :find_by_params, only:[:show, :edit, :update]

  def index
 
    if params["/search"]
    binding.pry
    params["/search"][:power]
    else
    	@heroines = Heroine.all
    end

  end

  def show
 
  end

  def edit

  end

  def new
  	@heroine = Heroine.new
  end

  def search
  	binding.pry
  end

  def create

  	@heroine = Heroine.create(safe_params)
  	if @heroine.validate
  		redirect_to heroines_path
  	else
  		render :new
    end
  	
  end




private

def find_by_params
	@heroine = Heroine.find(params[:id])
end

def safe_params
	binding.pry
	params.require(:heroine).permit(:name, :super_name, :power_id)
	
end


end


