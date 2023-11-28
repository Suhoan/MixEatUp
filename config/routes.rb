Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #  root "posts#index"
  get "index", to: "filters#index"
  get "filters/meal", to: "filters#meal"
  get "filters/event", to: "filters#event"
  get "filters/clarifications", to: "filters#clarifications"
  get "filters/allergies", to: "filters#allergies"
  get "filters/location", to: "filters#location"
  get "filters/budget", to: "filters#budget"
  get "restaurants/loading", to: "restaurants#loading"
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show"
  post "restaurants/:id", to: "saved_restaurants#create"
  post "bills/:id", to: "bills#create"
  get "users/edit", to: "users#edit"
  patch "users/edit", to: "users#update"
  get "saved_restaurants", to: "restaurants#saved"
end
