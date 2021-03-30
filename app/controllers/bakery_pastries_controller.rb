class BakeryPastriesController < ApplicationController
  def index
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
  end

  def show
  end

  def new
  end

  def create
    @bakery = Bakery.find(params[:id])
    @pastries = @bakery.pastries
    @pastries = Pastry.new(pastry_params)
    @pastries.save!

    redirect_to '/bakeries/:id/pastries'
  end

  private

  def pastry_params
    params.permit(:name, :price, :gluten)
  end
end
