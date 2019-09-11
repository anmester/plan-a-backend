class ActivityReviewsController < ApplicationController
    def index
        @activity_reviews = Activity_Review.all 
        render json: @activity_reviews
    end
end
