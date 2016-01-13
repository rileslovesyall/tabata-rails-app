class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def not_user
  flash[:alert] = "You do not have permission to view this page."
    redirect_to root_path
  end

end
