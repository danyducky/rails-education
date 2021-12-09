class Student < ApplicationRecord
  belongs_to :user
  belongs_to :personal
  belongs_to :group
end
