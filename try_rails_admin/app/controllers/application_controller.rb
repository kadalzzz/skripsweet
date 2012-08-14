class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  require 'pp'
  before_filter :check_access_to_admin

  def require_login
    if current_user.nil?
      redirect_to log_in_path
    else
      return current_user
    end
  end

  def check_access_to_admin
    if params[:controller] == "rails_admin/main"
      if current_user.blank? || !current_user.is_admin?
        redirect_to "/home"
      end
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  rescue 
    @current_user = nil
  end


end
