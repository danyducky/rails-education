class Student::RequestController < ApplicationController
  layout 'module'

  before_action :require_user_authorized!

  def index
    request = GroupRequest.find_by_user_id(@current_user.id)

    return redirect_to action: 'show', id: request.id if request.present?

    @specialities = Speciality.all
  end

  def show
    @request = GroupRequest.find_by_user_id(@current_user.id)

    redirect_to action: 'index' if @request.nil?
  end

  def create
    request = GroupRequest.create(user_id: @current_user.id, group_id: request_params[:group_id])

    redirect_to action: 'show', id: request.id
  end

  def destroy
    @request = GroupRequest.find_by_user_id(@current_user.id)
    @request.destroy if @request.present?

    redirect_to action: 'index'
  end

  def request_params
    params.require(:request).permit(:speciality_id, :group_id)
  end
end
