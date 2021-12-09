class Administrative::WelcomeController < ApplicationController
  layout 'administrative'

  before_action :require_user_authorized!
  before_action -> { require_role_access!(Role.identifiers[:administrator]) }

  def index; end

end
