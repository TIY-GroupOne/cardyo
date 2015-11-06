json.users @users do |users|
  json.username users.username
  json.decks users.decks
  json.created_at users.created_at
  json.email users.email

end