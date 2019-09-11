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

    def edit
        @plan = Plan.find(params[:id])
    end

    def update
        @plan = Plan.find(params[:id])
        @plan.update(name: params[:plan][:name], date: params[:plan][:date])
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.plan_activities.destroy_all
        @plan.destroy
        render json: @plans
    end

    private
   
    def plan_params
        params.require(:plan).permit(:name, :date, {:activities =>[]}, :user_id)
    end
end
