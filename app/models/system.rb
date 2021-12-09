class System < ApplicationRecord
  has_many :system_bindings
  has_many :roles, through: :system_bindings
end
