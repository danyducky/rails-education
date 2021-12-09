class Subject < ApplicationRecord
  has_many :teacher_bindings

  has_many :teachers, through: :teacher_bindings, source: :user # teachers

  has_many :groups, through: :teacher_bindings # subject groups
end
