Rails.application.routes.draw do
  ### USERS
  post "/users" => "users#create"
  get "/users" => "users#show"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  ### LOGIN SESSIONS
  post "/sessions" => "sessions#create"

   ### PATIENTS
 get "/patients" => "patients#index"
 post "/patient" => "patients#create"
 get "/patients/:id" => "patients#show"
 patch "patients/:id" => "patients#update"
 delete "patients/:id" => "patients#destroy"
 
 ### DRUGS
 post "/drugs" => "drugs#create"
 patch "drugs/:id" => "drugs#update"
 delete "drugs/:id" => "drugs#destroy"



end
