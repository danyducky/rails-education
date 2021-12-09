class ModuleController < ApplicationController
  include SystemService
  layout 'module'
  before_action :require_user_authorized!

  def index
    @systems = SystemBuilder.new(@current_user).build_available

    request = GroupRequest.find_by_user_id(@current_user.id)

    redirect_to student_request_url, id: request.id if request.present? && @systems.length.zero?
  end
end
