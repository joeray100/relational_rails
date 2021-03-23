class BakeriesController < ApplicationController
  def index
    @bakeries = bakery.all
  end
end
