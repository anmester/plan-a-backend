Rails.application.routes.draw do
  resources :users, :plans, :activity_reviews, :plan_reviews, :activities, :plan_activities
  post '/login', to: 'auth#create'
  get '/retrieve_user', to: 'auth#retrieve'
  get '/plans/:plan_id/activities', to: 'plans#fetch_activities'
end
