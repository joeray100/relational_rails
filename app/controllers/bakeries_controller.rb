class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.all
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  def new
  end

  def pastries
    @pastries = Pastry.find(params[:id])
  end
end
