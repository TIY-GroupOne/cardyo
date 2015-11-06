
json.deck do
  json.title @deck.title
  json.deck_id @deck.id
end

json.cards @cards do |card|
  json.deck_id card.deck_id
  josn.card_id card.id
  json.question card.question
  json.answer card.answer
end
