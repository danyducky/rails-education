class Student::WelcomeController < ApplicationController
  layout 'student'

  before_action :require_user_authorized!
  before_action -> { require_role_access!(Role.identifiers[:student]) }

  def index
    @student = Student.find_by_user_id(@current_user.id)
  end
end
