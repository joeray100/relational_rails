class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.order("created_at DESC")
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  def new
  end

end
