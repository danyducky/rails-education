class AuthController < ApplicationController
  include AuthService
  layout 'authentication'

  before_action :require_user_unauthorized!

  def new
    @user = User.new
  end

  def index; end

  def login
    @user = LoginHandler.new(login_params).handle

    if @user
      session[:user_id] = @user.id
      redirect_to controller: 'module', action: 'index'
    else
      render json: { success: false }, status: 400
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
