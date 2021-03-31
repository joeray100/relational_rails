class BakeryPastriesController < ApplicationController
  def index
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
  end

  def new
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
  end

  def create
    bakery = Bakery.find(params[:id])
    bakery.pastries.create!(pastry_params)

    redirect_to "/bakeries/#{bakery.id}/pastries"
  end

  private

  def pastry_params
    params.permit(:name, :price, :gluten_free)
  end
end
