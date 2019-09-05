class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all 
        render json: @activities
    end

    def create
        @activity = Activity.create(activity_params)
        render json: @activity
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :category, :longitude, :latitude, :price, :rating)
    end
end
