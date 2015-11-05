class DeckController < ApplicationController 

	def index
		@deck = Deck.order("title")

		#render some json
		render "index.json.jbuilder", status: :ok
	end

	def retrieve
		@deck = Deck.find_by(params[:title])
		#render some json
		render "retrieve.json.jbuilder", status: :found
	end

	def create
		
		@deck = Deck.new(title: params[:title])

		if @deck.save
			render json: { deck: @deck }, status: :ok
		else

			render json: { errors: @deck.errors.full_messages },
        	status: :unprocessable_entity
		end
	end

	def delete
		@deck = Deck.find_by(params[:title])
		@deck.destroy
		#render some json
		
	end
end