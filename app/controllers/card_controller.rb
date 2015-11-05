class CardController < ApplicationController 

	def create
		@deck = Deck.find_by(title: params[:title])
		
		@card = @deck.cards.create(deckid: @deck.id, question: params[:question], answer: params[:answer])
		
		#render some json
		render json: { deck: @card }, status: :created
	end

	def delete
		@card = Card.find_by(deckid: params[:deckid],question: params[:question])
		@card.destroy
		#render some json
		render json: { deck: @card }, status: :ok
	end
end