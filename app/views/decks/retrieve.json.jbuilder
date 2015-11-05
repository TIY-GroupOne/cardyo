
json.deck do
  json.title @deck.title
end

json.cards @cards do |card|
  json.card card.question
  json.card card.answer
end