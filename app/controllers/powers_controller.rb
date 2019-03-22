class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
    @heroines = @power.heroines
  end


  def search
    @heroines = Heroine.all
    @powers = Power.all
    url = request.original_url
    uri    = URI.parse(url)
    params = CGI.parse(uri.query)
    @search_term = params["q"][0].downcase
    # byebug
    # not registering that :q is a valid name or invalid name - defaults to invalid
    if Power.find_by(name: @search_term) != nil
      @power = Power.find_by(name: @search_term)
      redirect_to power_path(@power.id)
    else
      render "heroines/index.html.erb"
    end
  end

end
