class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def show
    @businesses = Business.find(params[:id])
  end

  def create
    @businesses = Business.order(created_at: :asc)
  end

end
