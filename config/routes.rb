Rails.application.routes.draw do
  resources :users, :plans, :activity_reviews, :plan_reviews, :activities, :plan_activities
  post '/login', to: 'auth#create'
  get '/retrieve_user', to: 'auth#retrieve'
  get '/plans/:plan_id/activities', to: 'plans#fetch_activities'
  get '/theaters', to: 'activities#fetch_theaters'
  get '/outdoor-events', to: 'activities#fetch_outdoor_events'
  get '/galleries', to: 'activities#fetch_galleries'
  get '/bars', to: 'activities#fetch_bars'
  get '/restaurants', to: 'activities#fetch_restaurants'
  get '/random-plan', to: 'activities#random_plan'
end
