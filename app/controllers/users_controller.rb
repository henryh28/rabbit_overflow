class UserControllers < ApplicationController

  def new
    redirect_to root_pathg
  end

  def login

  end

  def logout
    session.clear
    redirect_to root_path
  end
end
