json.decks @decks do |deck|
  json.title deck.title
  json.deck_id deck.id
  json.user_id deck.user_id

end