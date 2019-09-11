class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all 
        render json: @activities
    end

    def create
        @activity = Activity.create(activity_params)
        render json: @activity
    end

    def fetch_theaters
        theaters = Activity.all.select{|activity| activity[:category] === 'theater'}
        render json: theaters
    end

    def fetch_outdoor_events
        outdoor_events = Activity.all.select{|activity| activity[:category] === 'Outdoor Event'}
        render json: outdoor_events
    end

    def fetch_galleries
        galleries = Activity.all.select{|activity| activity[:category] === 'gallery'}
        render json: galleries
    end

    def fetch_bars
        bars = Activity.all.select{|activity| activity[:category] === 'Bar'}
        render json: bars
    end

    def fetch_restaurants
        restaurants = Activity.all.select{|activity| activity[:category] === 'Restaurant'}
        render json: restaurants
    end

    def random_plan
        activities = Activity.all.sample(3)
        render json: activities
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :category, :longitude, :latitude, :description, :link, :price, :rating)
    end
end
