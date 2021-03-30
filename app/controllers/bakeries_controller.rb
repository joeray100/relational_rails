class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.order(created_at: :desc)
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  def new
    @bakeries = Bakery.new
  end

  def create
    @bakery = Bakery.new(bakery_params)
    @bakery.save!

    redirect_to '/bakeries'
  end

  private

  def bakery_params
    params.require(:bakery).permit(:name, :rank, :open)
  end

  def edit
    @bakeries = Bakery.find(params[:id])
  end

  def update
    @bakeries.Bakery.find(bakery_params)
    @bakeries.update
    @bakeries.save
    redirect_to '/bakeries/:id'
  end

  def destroy
    @bakery = Bakery.find(params[:id])
    @bakery.destroy
    redirect_to '/bakeries'
  end
end
