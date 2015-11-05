class DecksController < ApplicationController 

	def index
		@decks = Decks.order("title")
		#render some json
		render "index.json.jbuilder", status: :ok
	end

	def retrieve
		@deck = Decks.find_by(params[:title])
		#render some json
		render "retrieve.json.jbuilder", status: :found
	end

	def create
		@deck = Decks.new(userid: params[:userid], title: params[:title])

		if @deck.save
			status: :ok
		else
			render json: { errors: @deck.errors.full_messages },
        	status: :unprocessable_entity
		end
	end

	def delete
		@deck = Decks.find_by(params[:title])
		@deck.distroy
		#render some json
		status: :ok
	end
end