class GuessController < ApplicationController 

  #handling correct answers
  #how to make internets?
  #
	
  def retrieve
    @guess = Guess.find_by(user_id: params[:user_id], card_id: params[:card_id])
    render "guess.json.jbuilder", status: :found
	end

	def record
    @guess = Guess.new(user_id: current_user.id, 
                       card_id: params[:card_id],
                       guess: params[:guess],
                       duration: params[:duration], 
                       correct: params[:correct],
              )
    if @guess.save
      render json: { guess: @guess }, status: :ok
    else
      render json: { errors: @guess.errors.full_messages },
          status: :unprocessable_entity
      end
	 end


end