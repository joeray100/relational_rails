class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @business = Business.find(params[:id])
    @employees = @business.employees.count
  end

  def new
  end

  def employee_index
    @business = Business.find(params[:id])
    @employees = @business.employees.all
  end
end
