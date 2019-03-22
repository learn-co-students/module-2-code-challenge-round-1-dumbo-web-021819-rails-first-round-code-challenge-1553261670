class HeroinesController < ApplicationController
  def index
  	# Only find a power if the param was passed in, otherwise return nil
  	@power = params[:search] ? Power.find_by(name: params[:search]) : nil
  	@heroines = find_heroines_by_power(@power)
  end

  def show
  	@heroine = Heroine.find(params[:id])
  end

  def new
  	@heroine = Heroine.new
  end

  # Attempts to create a Heroine, checks validity
  # using helper method in superclass and
  # redirects to / renders the appropiate view.
  #
  # see: ApplicationController.redirect_by_validity
  def create
  	@heroine = Heroine.create(heroine_params)
  	redirect_by_validity(@heroine, :new)
  end

  private

  def heroine_params
  	params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  # Return an array of heroines based
  # on whether or not they possess the
  # provided power. Returns all heroines
  # if power is nil
  #
  # TODO: Return error or empty collection
  # if power is nil instead of all heroine
  # instances
  def find_heroines_by_power(power)
    if power.nil?
  		@heroines = Heroine.all
  	else
  		@heroines = Heroine.where(power_id: power.id)
  	end
  end

end
