class PlanActivitiesController < ApplicationController
    def index
        @plan_activities = PlanActivity.all
        render json: @plan_activities
    end
    
    def create
        targetPlan = Plan.find_by(name: params['plan']['planName'])
        targetActivity = Activity.find_by(name: params['activity']['properties']['name'])
        @plan_activity = PlanActivity.create(plan_id: targetPlan.id, activity_id: targetActivity.id)
        render json: @plan_activity
    end

    private
  
    def plan_activity_params
      params.require(:plan_activity).permit(:plan_id, :activity_id)
    end
  end