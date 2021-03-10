class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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
    @suggestions = Island.all.sample(3)
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)

    if @island.save
      redirect_to @island
    else
      render :new
    end
  end

  private

  def island_params
    params.require(:island).permit(
      :name, :location, :description, :capacity, :facilities,
      :access, :price_per_night, :photos
    )
  end
end
