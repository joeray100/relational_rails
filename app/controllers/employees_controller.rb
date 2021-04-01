class EmployeesController < ApplicationController

  def index
    @employees = Employee.true_employees
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    employee =Employee.find(params[:id])
    employee.update(update_params)
    employee.save!
    redirect_to "/employees/#{employee.id}"
  end

  def destroy
    Employee.destroy(params[:id])
    redirect_to '/employees'
  end

  private

  def update_params
    params.permit(:name, :hours_worked, :likes_job)
  end
end
