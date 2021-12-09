class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user_authorized!
    redirect_to login_path if @current_user.nil?
  end

  def require_user_unauthorized!
    redirect_to module_index_path if @current_user.present?
  end

  def require_role_access!(role_id)
    redirect_to module_index_path unless @current_user.role_ids.include?(role_id)
  end

end
