Rails.application.routes.draw do
  resources :users
  post '/login', to: 'auth#create'
  get '/retrieve_user', to: 'auth#retrieve'
end
