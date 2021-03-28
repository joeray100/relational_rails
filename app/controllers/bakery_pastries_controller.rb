class BakeryPastriesController < ApplicationController
  def index
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
  end
end
