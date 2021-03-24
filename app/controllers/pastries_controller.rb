class PastriesController < ApplicationController

  def index
    @pastries = Pastry.all
  end

  def show
    @pastries = Pastry.find(params[:id])
  end
end
