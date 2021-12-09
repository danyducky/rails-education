class Teacher::CuratorController < ApplicationController
  layout 'teacher'
  skip_before_action :verify_authenticity_token
  before_action :require_user_authorized!
  before_action -> { require_role_access!(Role.identifiers[:teacher]) }

  def index
    @groups = Group.joins(:group_curators).where(group_curators: { user_id: @current_user.id })
  end

  def show
    @group = Group.find(params[:id])
  end

  def apply_student
    group_id = params[:request][:group_id]
    request_ids = params[:request_ids]

    requests = GroupRequest.find(request_ids)
    requests.each do |request|
      student = Student.create(
        user_id: request.user_id,
        personal_id: request.user.personal.id,
        group_id: request.group_id
      )
      student.user.credentials.create(role_id: Role.identifiers[:student])
    end
    GroupRequest.delete(requests)

    redirect_to action: 'show', id: group_id
  end
end
