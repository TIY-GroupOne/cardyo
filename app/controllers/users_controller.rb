class UsersController < ApplicationController

  def index
    @users = User.where(id: != 0)
  end

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