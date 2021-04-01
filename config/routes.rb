Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do

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
