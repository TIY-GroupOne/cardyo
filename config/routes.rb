Rails.application.routes.draw do


root "users#welcome"

  ## Deck routes
  get "/index" , to: "deck#index"
  get "/decks/:id/cards" , to: "deck#retrieve"

  post "/decks" , to: "deck#create"
  post "/decks/:id/cards" , to: "card#create"

  delete "/decks" , to: "deck#delete"
  delete "/decks/:id/cards/" , to: "card#delete"

  # You can have the root of your site routed with "root"
  # root 'welcome#index'


post "/users/new", to: "users#new"
get "/users/:id", to: "users#info"
get "/users/:id/profile", to: "users#profile", as: profile


end
