class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user

    if @island.save
      redirect_to @island
    else
      render :new
    end
  end

  def show
    @island = Island.find(params[:id])
  end

  private
  
  def island_params
    params.require(:island).permit(
      :name, :location, :description, :capacity, :facilities,
      :access, :price_per_night, :photos
    )
  end
end
