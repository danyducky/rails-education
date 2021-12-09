class WelcomeController < ApplicationController
  def index
    if @current_user.present?
      redirect_to module_index_path
    else
      redirect_to login_path
    end
  end
end
