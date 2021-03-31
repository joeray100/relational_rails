class BusinessEmployeesController < ApplicationController
  def index
    @business = Business.find(params[:id])
    @employees = @business.employees
    @employees = Employee.order_by_name
  end

  def new
    @business = Business.find(params[:id])
    @employees = @business.employees
  end

  def create
    business = Business.find(params[:id])
    business.employees.create!(employee_params)

    redirect_to "/businesses/#{business.id}/employees"
  end

  private

  def employee_params
    params.permit(:name, :likes_job, :hours_worked)
  end
end
