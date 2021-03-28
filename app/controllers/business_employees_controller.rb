class BusinessEmployeesController < ApplicationController
  def index
    @business = Business.find(params[:id])
    @employees = @business.employees
  end

  def show
  end
end
