class Api::CompetenceController < ApplicationController
  before_action :require_user_authorized!

  def subjects
    subject_ids = TeacherBinding.where(user_id: params[:teacher_id], group_id: params[:group_id])
                                .select(:subject_id)

    subject_items = Subject.where
                           .not(id: subject_ids)
                           .select(:id, :caption)

    render json: subject_items, status: 200
  end
end
