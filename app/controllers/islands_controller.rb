class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def show
    @island = Island.find(params[:id])
  end

end
