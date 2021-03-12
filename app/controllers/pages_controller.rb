class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @islands = Island.all
    @regions = Island.all.map(&:location).uniq.map{ |region| Island.find_by_location(region) }
  end

  def dashboard; end
end
