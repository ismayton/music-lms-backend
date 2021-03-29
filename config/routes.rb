Rails.application.routes.draw do
  resources :subscriptions
  resources :lessons
  resources :courses
  resources :teachers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
