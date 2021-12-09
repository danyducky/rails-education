class Administrative::CompetenceController < ApplicationController
  layout 'administrative'

  before_action :require_user_authorized!
  before_action -> { require_role_access!(Role.identifiers[:administrator]) }

  def index
    @groups = Group.joins(:teacher_bindings)
                   .distinct
    # @subjects = Subject.joins(:teacher_bindings).distinct
  end

  def new
    @teachers = User.joins(:credentials).where(credentials: { role_id: Role.identifiers[:teacher] })
    @groups = Group.all
  end

  def create
    TeacherBinding.create(create_params)

    redirect_to action: 'index'
  end

  def create_params
    params.require(:binding).permit(:user_id, :subject_id, :group_id)
  end
end
