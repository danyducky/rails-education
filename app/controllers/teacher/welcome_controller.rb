class Teacher::WelcomeController < ApplicationController
  layout 'teacher'
  before_action -> { require_role_access!(Role.identifiers[:teacher]) }

  def index
    @subjects = Subject.joins(:teacher_bindings).where(teacher_bindings: { user_id: @current_user.id })
  end
end
