class CardController < ApplicationController 

	def create
		@deck = Deck.find_by(id: params[:id])
		#binding.pry
		@card = @deck.cards.create(deck_id: params[:id], question: params[:question], answer: params[:answer])
		
		#render some json
		render json: { deck: @card }, status: :created
	end

	def editcard
    card = Card.find(params[:id])
    card.update(question: params[:question], answer: params[:answer],)
  end

	def delete
		@card = Card.find_by(id: params[:id])
		@card.destroy
		#render some json
		render json: { deck: @card }, status: :ok
	end
end