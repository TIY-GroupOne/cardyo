class CardController < ApplicationController 

	def create
		@deck = Deck.find(params[:id])
		@deck.cards.create(deckid: :id, question: params[:question], answer: params[:answer])
		
		#render some json
		render json: { deck: @card }, status: :created
	end

	def delete
		@card = Card.find_by(params[:deckid], params[:question])
		@card.destroy
		#render some json
		render json: { deck: @card }, status: :ok
	end
end