class DeckController < ApplicationController 

	def index
		@decks = Deck.order("title")
		#todo: update json response to return username not id
		#render some json
		render "index.json.jbuilder", status: :ok
	end

	def retrieve
		
		@deck = Deck.find_by(id: params[:id])
		@cards = Card.where(deck_id: @deck.id)
		
		#render some json
		render "retrieve.json.jbuilder", status: :found
	end

	def create
		
		@deck = Deck.new(user_id: params[:user_id], title: params[:title])

		if @deck.save
			render json: { deck: @deck }, status: :ok
		else

			render json: { errors: @deck.errors.full_messages },
        	status: :unprocessable_entity
		end
	end

	def delete
		@deck = Deck.find_by(id: params[:id])
		@card = Card.destroy_all(id: params[:id])
		@deck.destroy
		#render some json
		render json: { deck: @deck }, status: :ok
	end
end