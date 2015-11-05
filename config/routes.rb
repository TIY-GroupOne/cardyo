Rails.application.routes.draw do


root "users#welcome"


  ## Deck routes
  get "/index" , to: "deck#index"
  get "/decks/:id/cards" , to: "deck#retrieve"

  post "/decks" , to: "deck#create"
  post "/decks/cards" , to: "card#create"

  delete "/decks" , to: "deck#delete"
  delete "/decks/:id/cards/" , to: "card#delete"


#USER CONTROLLERS
post "/users/new", to: "users#create"
get "/users/:id", to: "users#info" , as: "user"
post "/users/new", to: "users#new"
get "/users/:id", to: "users#info"

get "/users/:id/profile", to: "users#profile", as: "profile"
put "/users/:id/profile", to: "users#profedit"
post "/users/:id/profile", to: "users#profupdate"
delete "/users/:id", to: "users#destroy"

#SESSION CONTROLLER
get "login", to: "sessions#new", as: "login"
post "login", to: "sessions#create"
delete "login", to: "sessions#destroy"


end
