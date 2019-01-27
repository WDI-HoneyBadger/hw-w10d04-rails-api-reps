Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :quotes

  get "/quotes", to:"quotes#index"
get "/quotes/:id", to: "quotes#show"   
post "/quotes", to:"quotes#create"
put "/quotes/:id", to: "quotes#update"

delete "/quotes/:id", to: "quotes#destroy"
  end
