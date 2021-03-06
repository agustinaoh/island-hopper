class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @islands = Island.all
    @regions = Island.all.map(&:location).uniq.map{ |region| Island.find_by_location(region) }
  end

  def dashboard
    @pending_bookings = current_user.booking_requests.where(status: 'Pending')
    @accepted_bookings = current_user.bookings.where(status: 'Accepted')
  end
end
