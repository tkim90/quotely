class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    session[:user_id] = 1
    session[:username] = "tae"
    session[:flashes] = {notice: false, alert: false}
  end
end
