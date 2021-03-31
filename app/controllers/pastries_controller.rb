class PastriesController < ApplicationController

  def index
    @pastries = Pastry.gluten_free_true
  end

  def show
    @pastry = Pastry.find(params[:id])
  end

  def new
  end

  def edit
    @pastry = Pastry.find(params[:id])
  end

  def update
    pastry = Pastry.find(params[:id])
    pastry.update(update_params)
    pastry.save!
    redirect_to "/pastries/#{pastry.id}"
  end

  private

  def update_params
    params.permit(:name, :price, :gluten_free)
  end
end
