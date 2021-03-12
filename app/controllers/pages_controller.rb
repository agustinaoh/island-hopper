class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @islands = Island.all
  end

  def dashboard
    @pending_bookings = current_user.bookings.where(status: 'Pending')
    @accepted_bookings = current_user.bookings.where(status: 'Accepted')
  end
end
