class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_session
  	CurrentSession.first
  end
end
