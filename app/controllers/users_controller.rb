class UsersController < ApplicationController

  def index
    @users = User.all
    render "users.json.jbuilder", status: :found
  end

  #def profile
  #  @user = current_user
  #end

  def profedit
    @user = User.find(params[:id])

  end

  def profupdate
  end

end