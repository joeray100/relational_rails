class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.order("created_at DESC")
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  def new
    @bakeries = Bakery.new
  end

  def create
    @bakery = Bakery.new(bakery_params)
    @bakery.save

    redirect_to '/bakeries'
  end

  private

  def bakery_params
    params.require(:bakery).permit(:name, :rank, :open)
  end
end
