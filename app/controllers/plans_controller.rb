class PlansController < ApplicationController
    def index
        @plans = Plan.all 
        render json: @plans
    end

    def create
        @plan = Plan.create(plan_params)
        render json: @plan
    end

    def fetch_activities
        plan = Plan.find(params[:plan_id])
        render json: plan.activities, only: [:name, :price, :rating]
    end

    private
   
    def plan_params
        params.require(:plan).permit(:name, :date, {:activities =>[]}, :user_id)
    end
end
