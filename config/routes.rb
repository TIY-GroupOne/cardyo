Rails.application.routes.draw do


root "users#welcome"

#REGISTRATION CONTROLLER
post "/signup", to: "registrations#create"
delete "/signup", to: "registrations#destroy"
post "/login", to: "registrations#login"
get "/logout", to: "registrations#logout"

#USER CONTROLLERS
get "/users/:id", to: "users#info" , as: "user"
post "/users/new", to: "users#new"
get "/users/:id", to: "users#info"

get "/users/:id/profile", to: "users#profile", as: "profile"

#DECK AND CARD ROUTES
get "/index" , to: "deck#index"
get "/decks/cards" , to: "deck#retrieve"
post "/decks" , to: "deck#create"
post "/decks/cards" , to: "card#create"
delete "/decks" , to: "deck#delete"
delete "/decks/:id/cards/" , to: "card#delete"


#USER CONTROLLERS
#get "/users/:id/profile", to: "users#profile", as: profile
#put "/users/:id/profile", to: "users#profedit"
#post "/users/:id/profile", to: "users#profupdate"

end
