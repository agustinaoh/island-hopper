class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

end
