class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def travel_plans
    @customer = Customer.find(params[:id])
    render 'travel_plans'
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      flash[:success] = "Customer saved!"
      redirect_to customer_path
    else
      render 'edit'
    end
  end


  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :bio, :country)
    end
end
