class UsersController < ApplicationController

  #def info
  #end

  #def profile
  #  @user = current_user
  #end

  def profedit
    @user = User.find(params[:id])

  end

  def profupdate
  end

  def destroy
  end

end