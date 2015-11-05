Rails.application.routes.draw do

root "users#welcome"

post "/users/new", to: "users#new"
get "/users/:id", to: "users#info"
get "/users/:id/profile", to: "users#profile", as: profile


end
