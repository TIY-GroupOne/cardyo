
json.deck do
  json.title @deck.title
  json.deck_id @deck.id
end

json.cards @cards do |card|
  json.card card.question
  json.card card.answer
end
