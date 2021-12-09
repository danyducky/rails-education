class Api::GroupController < ApplicationController
  before_action :require_user_authorized!

  def by_speciality_id
    group_items = Group.where(speciality_id: params[:id]).select(:id, :caption)
    render json: group_items, status: 200
  end

end
