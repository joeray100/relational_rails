class PastriesController < ApplicationController

  def index
    @pastries = Pastry.all
  end

  def show
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries.count
  end

  def new
  end

  def pastry_index
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries.all
  end
end
