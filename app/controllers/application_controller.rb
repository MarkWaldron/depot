class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_date
  def set_date
  	@date_loaded = Time.now
  end
  
  def reset_session_counter
  	if not session[:counter].nil?
  		session[:counter] = 0
  	end
  end
end