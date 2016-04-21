class SessionsController < ApplicationController

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: username

    if user && user.authenticate( password )
      session[:user_id] = user.id
      redirect_to profile_path
    else
      redirect_to log_in_path
    end
  end

  # Destroy session by setting user_id to nil
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end # End of SessionsController
