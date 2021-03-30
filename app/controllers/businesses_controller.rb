class BusinessesController < ApplicationController
  def index
    @businesses = Business.order(created_at: :desc)
  end

  def show
    @businesses = Business.find(params[:id])
  end

  def new
    @businesses = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.save

    redirect_to '/businesses'
  end

  private

  def business_params
    params.require(:business).permit(:name, :rank, :big_company)
  end

  def edit
    @businesses = Business.all
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to '/businesses'
  end
end
