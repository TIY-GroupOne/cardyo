class GuessController < ApplicationController 

  #handling correct answers
  #how to make internets?
  #
	
  def retrieve
    @guess = Guess.find_by(user_id: params[:user_id], card_id: params[:card_id])
    render "guess.json.jbuilder", status: :found
	end

	def record
    #deckid, question, answer --> Card
    #cardid, userid, answer, duration
    @card = Card.find(card_id: params[])
	end


end