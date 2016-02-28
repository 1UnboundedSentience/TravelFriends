class TravelPlansController < ApplicationController
  def index
    @travel_plans = TravelPlan.all
  end

  def show
    @travel_plan = TravelPlan.find(params[:id])
  end

  def fly
    @travel_plan = TravelPlan.find(params[:id])
  end
  def drive
    @travel_plan = TravelPlan.find(params[:id])
  end
  def sleep
    @travel_plan = TravelPlan.find(params[:id])
  end
  def eat
    @travel_plan = TravelPlan.find(params[:id])
  end
  def navigate
    @travel_plan = TravelPlan.find(params[:id])
  end
  def shop
    @travel_plan = TravelPlan.find(params[:id])
  end
  def map
    @travel_plan = TravelPlan.find(params[:id])
  end
  def traffic
    @travel_plan = TravelPlan.find(params[:id])
  end
  def discover
    @travel_plan = TravelPlan.find(params[:id])
  end

  def expedia_cars
    response = HTTParty.get("http://terminal2.expedia.com/x/cars/search?pickupdate="+ params[:pickupdate] + "&dropoffdate=" + params[:dropoffdate] + "&pickuplocation="+ params[:pickuplocation]+"&dropofflocation="+params[:dropofflocation]+"&sort=price&limit=10&a&apikey=zArxH6LB1NhEGBOiGtI4gsmCKBAMhd7C")
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
