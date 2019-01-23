Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :quotes
  #  get "/quote",to:"quote#index"
  # get "/quote/:id",to:"quote#show"
  # post "/quote", to:"quote#create"
  # put "/quote/:id",to:"quote#update"
  # delete "/quote/:id",to:"quote#destroy" 
end
