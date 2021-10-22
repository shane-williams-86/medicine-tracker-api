Rails.application.routes.draw do
  ### USERS
  post "/users" => "users#create"
  get "/users" => "users#show"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  ### LOGIN SESSIONS
  post "/sessions" => "sessions#create"


end
