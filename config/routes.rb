Rails.application.routes.draw do
  ### USERS
  post "/users" => "users#create"
  get "/users/me" => "users#show"
  patch "/users/me" => "users#update"
  delete "/users/me" => "users#destroy"

  ### LOGIN SESSIONS
  post "/sessions" => "sessions#create"

  ### PATIENTS
  get "/patients" => "patients#index"
  post "/patients" => "patients#create"
  get "/patients/:id" => "patients#show"
  patch "/patients/:id" => "patients#update"
  delete "/patients/:id" => "patients#destroy"

  ### DRUGS
  post "/drugs" => "drugs#create"
  patch "/drugs/:id" => "drugs#update"
  delete "/drugs/:id" => "drugs#destroy"
end
