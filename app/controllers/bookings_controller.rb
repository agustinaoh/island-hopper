class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to dashboard_path # Redirect to dashboard_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = 'Accepted'
    @booking.save

    redirect_to dashboard_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = 'Rejected'
    @booking.save

    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :island_id)
  end
end
