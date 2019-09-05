class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
    has_many :plans
    has_many :activity_reviews
    has_many :plan_reviews
end
