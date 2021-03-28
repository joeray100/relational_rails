class BakeryPastriesController < ApplicationController
  def index
    require "pry"; binding.pry
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
  end
end
