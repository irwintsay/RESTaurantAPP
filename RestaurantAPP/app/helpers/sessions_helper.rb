module SessionsHelper

  def authenticate!
    redirect_to log_in_path unless current_server
  end

  def current_server
    @current_server = Server.find session[:user_id] if session[:user_id]
  end
  
end
