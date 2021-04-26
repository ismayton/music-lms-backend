Rails.application.routes.draw do
  resources :lesson_statuses
  namespace :api do
    namespace :v1 do
      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      
      resources :courses, :users, :teachers, :subscriptions
    end
  end 
end
