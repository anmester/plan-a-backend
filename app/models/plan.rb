class Plan < ApplicationRecord
    belongs_to :user
    has_many :plan_activities
    has_many :activities, through: :plan_activities
end
