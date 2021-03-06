class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = params[:query].present? ? Island.search_by_name_and_location(params[:query]) : Island.all
    
    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { island: island })
      }
    end
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
    @booking = Booking.new

    @markers = [
      {
        lat: @island.latitude,
        lng: @island.longitude
      }
    ]
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
      :name, :location, :description, :capacity, 
      :price_per_night, :latitude, :longitude, access_list: [], facility_list: [], photos: []
    )
  end
end
