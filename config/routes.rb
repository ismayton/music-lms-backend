Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
      
      resources :lessons, :subscriptions

      resources :courses do 
        resources :lessons, :subscriptions 
      end 

      resources :teachers do 
        resources :subscriptions
        resources :courses do 
          resources :lessons, :subscriptions 
        end 
      end 

      resources :users do 
        resources :subscriptions
        resources :courses do 
          resources :lessons 
        end
      end 

    end
  end 

end
