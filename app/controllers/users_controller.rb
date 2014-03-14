class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.new(params[:new_user])
    if new_user.save
      redirect_to root_path
    else
      render :new
    end
  end

end
