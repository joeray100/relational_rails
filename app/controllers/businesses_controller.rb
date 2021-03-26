class BusinessesController < ApplicationController
  def index
    @businesses = Business.order(created_at: :desc)
  end

  def show
    @businesses = Business.find(params[:id])
  end

end
