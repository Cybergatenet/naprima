Rails.application.routes.draw do
  resources :people
  get "home/about"
  root "home#index"
  
  get "up" => "rails/health#show", as: :rails_health_check
end
