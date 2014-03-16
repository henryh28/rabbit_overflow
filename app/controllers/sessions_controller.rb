class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:login][:username])
    if user && params[:login][:password] == user.password
      session[:id] = user.id
      redirect_to root_path
    elsif user && params[:login][:password] != user.password
      flash.now[:error] = "Invalid password"
      render :new
    else
      flash.now[:error] = "Invalid username"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
