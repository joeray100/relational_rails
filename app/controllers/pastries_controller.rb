class PastriesController < ApplicationController

  def index
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries.all
  end

  def show
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries.count
  end

  def new
  end
end
