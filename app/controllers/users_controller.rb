class UsersController < ApplicationController
  def new

  end

  def create
    User.create(params[:new_user])
    redirect_to root_path
  end

  def login

  end

  def logout
    session.clear
    redirect_to root_path
  end
end
