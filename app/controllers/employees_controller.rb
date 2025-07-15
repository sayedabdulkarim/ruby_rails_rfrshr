class EmployeesController < ApplicationController
  
  ## we can create a single function which is common in all action
  before_action :set_employee, only: [:show, :edit, :update, :destroy] 
  def index
    @employees = Employee.all
  end

  def show
    # @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee was successfully created.'
    else
      render :new
    end
  end

  def edit
    # @employee = Employee.find(params[:id]) 
  end

def update
  # @employee = Employee.find(params[:id])
  if @employee.update(employee_params)
    redirect_to employees_path, notice: 'Employee was successfully updated.'
  else
    render :edit
  end
end

  def destroy
    # @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, notice: 'Employee was successfully destroyed.'
  end


def employee_params
  params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
end

private

def set_employee
  @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
  redirect_to employees_path, notice: error
end

end
