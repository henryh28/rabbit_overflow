class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:login][:username])
    if user
      session[:id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end


end
