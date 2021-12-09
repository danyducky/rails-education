class UserController < ApplicationController
  before_action :require_user_authorized!

  def logout
    session[:user_id] = nil
    redirect_to controller: 'auth', action: 'index'
  end
end
