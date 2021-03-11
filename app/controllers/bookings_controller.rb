class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to island_path(@island) # Redirect to dashboard_path
    else
      render :new
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  #   @island = Island.find(params[:island_id])
  #   @booking.island = @island
  #   @booking.user = current_user
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   if @booking.update(booking_params)
  #     redirect_to booking_path(@booking), notice: "The island owner has been notified that you updated your dates! :partying_face:"
  #   else
  #     render :edit
  #   end
  # end

  def index
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :island_id)
  end
end
