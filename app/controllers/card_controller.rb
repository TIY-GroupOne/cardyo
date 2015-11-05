class CardController < ApplicationController 

	def create
		@deck = Deck.find(params[:id])
		@deck.cards.create(deckid: @deck.deckid, question: params[:question], answer: params[:answer])
		#render some json
		status: :created
	end

	def delete
		@card = Card.find_by(params[:deckid], params[:question])
		@card.destroy
		#render some json
		status: :ok
	end
end