class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
  # HTTP Basic Authentication
  # This is not very secure, will later switch to devise
  def authenticate
    authenticate_or_request_with_http_basic do  |user_name, password|
      session[:logged_in] = (user_name == 'admin' && password == 'password')
    end
  end
  
end
