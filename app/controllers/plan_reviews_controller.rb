class PlanReviewsController < ApplicationController
    def index
        @plan_reviews = Plan_Review.all 
        render json: @plan_reviews
    end
end
