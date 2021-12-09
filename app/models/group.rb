class Group < ApplicationRecord
  belongs_to :speciality

  has_many :group_requests
  has_many :students

  has_many :group_curators

  has_many :teacher_bindings
  has_many :teachers, through: :teacher_bindings, source: :user
end
