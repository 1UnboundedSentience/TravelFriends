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
  def new
    @customer = Customer.new()
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

      def create
        @customer = Customer.new(customer_params)
        if @customer.save()
          flash[:success] = "Customer created!"
          redirect_to @customer
        else
          render 'new'
        end
      end


  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :bio, :sex, :country, :payment_method, :currency)
    end
end
