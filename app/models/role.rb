class Role < ApplicationRecord
  has_many :credentials
  has_many :users, through: :credentials

  has_many :system_bindings
  has_many :systems, through: :system_bindings

  validates_presence_of :caption

  enum identifiers: { user: 1, student: 2, teacher: 3, administrator: 4 }
end
