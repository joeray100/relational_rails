class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.most_recently_created
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

  def edit
    @bakery = Bakery.find(params[:id])
  end

  def update
    bakery = Bakery.find(params[:id])
    bakery.update(update_params)
    bakery.save!
    redirect_to "/bakeries/#{bakery.id}"
  end

  def destroy
    @bakery = Bakery.find(params[:id])
    @bakery.destroy
    redirect_to '/bakeries'
  end

  private

  def bakery_params
    params.require(:bakery).permit(:name, :rank, :open)
  end

  def update_params
    params.permit(:name, :rank, :open)
  end
end
