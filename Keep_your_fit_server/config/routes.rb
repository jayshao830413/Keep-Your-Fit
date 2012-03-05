KeepYourFitServer::Application.routes.draw do
  get "plans/index"

  get "log_in" => "sessions#new" , :as => "log_in"
  get "sign_up" => "users#new", :as =>"sign_up"
  get "log_out" => "users#destroy", :as => "log_out"

  root :to => "sessions#new"
  resources :users
  resources :sessions
  resources :plans
end
