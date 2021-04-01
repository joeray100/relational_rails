class BusinessesController < ApplicationController
  def index
    @businesses = Business.most_recently_created
  end

  def show
    @businesses = Business.find(params[:id])
  end

  def new
    @businesses = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.save!

    redirect_to '/businesses'
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    business =Business.find(params[:id])
    business.update(update_params)
    business.save!
    redirect_to "/businesses/#{business.id}"
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to '/businesses'
  end

  private

  def business_params
    params.require(:business).permit(:name, :rank, :big_company)
  end

  def update_params
    params.permit(:name, :rank, :big_company)
  end
end
