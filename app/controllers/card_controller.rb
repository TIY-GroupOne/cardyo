class CardController < ApplicationController 

	def create
		@deck = Deck.find_by(title: params[:title])
		binding.pry
		@card = @deck.cards.create(deck_id: @deck.id, question: params[:question], answer: params[:answer])
		
		#render some json
		render json: { deck: @card }, status: :created
	end

	def delete
		@card = Card.find_by(deck_id: params[:deckid],question: params[:question])
		@card.destroy
		#render some json
		render json: { deck: @card }, status: :ok
	end
end