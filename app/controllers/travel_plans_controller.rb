class TravelPlansController < ApplicationController
  def index
    @travel_plans = TravelPlan.all
  end

  def show
    @travel_plan = TravelPlan.find(params[:id])
  end

  def edit
    @travel_plan = TravelPlan.find(params[:id])
  end

  def find_by_customer_id
    @travel_plan = TravelPlan.find_by_customer_id(@customer.id)
  end

  def update
    @travel_plan = TravelPlan.find(params[:id])
    if @travel_plan.update_attributes(travel_plan_params)
      flash[:success] = "TravelPlan saved!"
      redirect_to travel_plan_path
    else
      render 'edit'
    end
  end


  private

    def travel_plan_params
      params.require(:travel_plan).permit(:title, :description, :destination, :travel_start, :travel_end)
    end
end
