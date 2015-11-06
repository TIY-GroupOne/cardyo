Rails.application.routes.draw do

#REGISTRATION CONTROLLER
post "/signup", to: "registrations#create"
delete "/signup", to: "registrations#destroy"
post "/login", to: "registrations#login"
get "/logout", to: "registrations#logout"

#USER CONTROLLERS
get "/users/:id", to: "users#info" , as: "user"
post "/users/new", to: "users#new"
get "/users/:id/profile", to: "users#profile", as: "profile"

#DECK AND CARD ROUTES
get "/index" , to: "deck#index"
get "/decks/:id/cards" , to: "deck#retrieve", as: "deck"
get "/decks/cards/:id", to: "card#show", as: "card"
post "/decks" , to: "deck#create"
post "/decks/:id/cards" , to: "card#create"
delete "/decks/:id" , to: "deck#delete"
delete "/decks/cards/:id" , to: "card#delete"
put "/decks/cards/:id", to: "card#editcard"

#GUESS CONTROLLER
get "/answers", to: "guess#retrieve"
post "/answers", to: "guess#record"


#USER CONTROLLERS
#get "/users/:id/profile", to: "users#profile", as: profile
#put "/users/:id/profile", to: "users#profedit"
#post "/users/:id/profile", to: "users#profupdate"

end
