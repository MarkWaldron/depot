class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_date
  def set_date
  	@date_loaded = Time.now
  end
end