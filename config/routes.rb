Rails.application.routes.draw do

root "users#welcome"

#USER CONTROLLERS
post "/users/new", to: "users#create"
get "/users/:id", to: "users#info" as: user
get "/users/:id/profile", to: "users#profile", as: profile
put "/users/:id/profile", to: "users#profedit"
post "/users/:id/profile", to: "users#profupdate"
delete "/users/:id", to: "users#destroy"

#SESSION CONTROLLER
get "login", to: "sessions#new", as: "login"
post "login", to: "sessions#create"
delete "login", to: "sessions#destroy"


end
