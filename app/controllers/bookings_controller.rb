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
      redirect_to dashboard_path # Redirect to dashboard_path
    else
      render :new
    end
  end

  # def bookings?
  #   bookings_count = 0

  #   current_user.islands.each do |island|
  #     island.bookings.each do
  #       bookings_count += 1
  #     end
  #   end

  #   return bookings_count.positive?
  # end

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

  # def index
  #   @bookings = Booking.where(user: current_user) # agustina made a reservation
  # end

  # def my_requests DOESN'T WORK
  #   @bookings = Booking.where(island.user == current_user) # daire owns the island
  # end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :island_id)
  end
end
