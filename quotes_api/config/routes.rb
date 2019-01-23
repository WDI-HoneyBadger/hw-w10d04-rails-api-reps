Rails.application.routes.draw do
 

get"/quotes",to:"quotes#index"
get"/quotes/:id",to:"quotes#show"

post"/quotes",to:"quotes#create"
put"/quotes/:id",to:"quotes#update"
delete"/quotes/:id",to:"quotes#destroy"

end
