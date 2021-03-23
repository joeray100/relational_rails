class BusinessesController < ApplicationController
  def index
    @businesses = business.all
  end
end
