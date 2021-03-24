class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.all
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end
end
