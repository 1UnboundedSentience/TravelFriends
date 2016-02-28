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


    def new
      if params[:customer_id].present?
        @customer_id = params[:customer_id]
      else
        @customer_id = 1
      end
      if params[:user_id].present?
        @user_id = params[:user_id]
      else
        @user_id = current_user[:id]
      end
      @customer = Customer.find(@customer_id)
      @user = User.find(@user_id)
      @travel_plan = TravelPlan.new()
    end

    def create
      @travel_plan = TravelPlan.new(travel_plan_params)
      if @travel_plan.save
        flash[:success] = "Travel Plan created!"
        redirect_to @travel_plan
      else
        redirect_to back
      end
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
      params.require(:travel_plan).permit(:title, :description, :destination, :travel_start, :travel_end, :customer_id, :user_id)
    end
end
