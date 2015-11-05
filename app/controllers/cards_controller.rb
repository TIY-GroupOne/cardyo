class CardsController < ApplicationController 

	def create
		@deck = Decks.find(params[:id])
		@deck.cards.create(deckid: @deck.deckid, question: params[:question], answer: params[:answer])
		#render some json
		status: :created
	end

	def delete
		@card = Cards.find_by(params[:deckid], params[:question])
		@card.distroy
		#render some json
		status: :ok
	end
end