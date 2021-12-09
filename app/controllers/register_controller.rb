class RegisterController < ApplicationController
  include RegisterService
  layout 'authentication'

  before_action :require_user_unauthorized!

  def new
    @user = User.new
    @personal = @user.create_personal
  end

  def index
    @user = User.new
  end

  def create
    @user = RegisterCreator.new(register_params).create_user

    redirect_to controller: 'auth', action: 'index'
  end

  private

  def register_params
    params.require(:register).permit(:email, :firstname, :surname, :patronymic, :birth_date, :password)
  end
end
