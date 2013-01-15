class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  protect_from_forgery

  def current_user
  	session[:user]
  end

  def logged_in?
  	!!current_user
  end
  
  def require_user
  	if !logged_in?
  		redirect_to login_path, error: "Login is required"
  	end
  end

end