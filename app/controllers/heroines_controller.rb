class HeroinesController < ApplicationController

  before_action :get_heroine, only: [:show, :edit, :update, :destroy]

def index
  @heroines = Heroine.all
end

def new
  @heroine = Heroine.new
end

def create
  @heroine = Heroine.create(user_params)
  # if @user.valid?
  # redirect_to user_path(@user)
  # else
  # render :new
  # end
end

def show
end

def edit
end

def update
 @heroine.update(heroine_params)
 redirect_to heroine_path(@heroine)
end

def destroy
 @heroine.destroy
 redirect_to heroines_path
end




private

def get_heroine
  @heroine = Heroine.find(params[:id])
end

def heroine_params
  params.require(:heroine).permit(:name, :super_name, :power_id)
end

end
