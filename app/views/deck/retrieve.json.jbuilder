
json.deck do
  json.title @deck.title
  json.deck_id @deck.id
  json.user_id @deck.user_id
end

json.cards @cards do |card|
  json.deck_id card.deck_id
  json.question card.question
  json.answer card.answer
end
