class TeacherBinding < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  belongs_to :group
end
