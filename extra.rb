 ### PATIENTS
 get "/patients" => "patients#index"
 post "/patient" => "patients#create"
 get "/patients/:id" => "patients#show"extra
 patch "patients/:id" => "patients#update"
 delete "patients/:id" => "patients#destroy"
 
 ### DRUGS
 post "/drugs" => "drugs#create"
 patch "drugs/:id" => "drugs#update"
 delete "drugs/:id" => "drugs#destroy"
