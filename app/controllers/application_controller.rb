class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.find session[:id]
  end
end
