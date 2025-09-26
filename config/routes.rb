Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  resources :people
  get "home/about"
  # root "home#index"
  root "home#set_session"
  # get "home#set_session"

  get "set_session", to: "home#set_session"
  get "clear_session", to: "home#clear_session"

  # for cookies
  get "set_cookies", to: "home#set_cookies"
  
  get "up" => "rails/health#show", as: :rails_health_check
end
