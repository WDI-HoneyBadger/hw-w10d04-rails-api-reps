Rails.application.routes.draw do

  get "/qoutes" ,to: "quotes#index"
  get "/quotes/:id", to: "quotes#show"
  post"/quotes", to: "quotes#create"
  put"/quotes/:id",to: "quotes#update"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
