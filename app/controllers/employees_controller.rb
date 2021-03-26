class EmployeesController < ApplicationController

  def index
    @business = Business.find(params[:id])
    @employees = @business.employees.all
  end

  def show
    @employees = Employee.find(params[:id])
    @employees = @business.employees.count
  end

  def new
  end
end
