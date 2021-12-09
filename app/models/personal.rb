class Personal < ApplicationRecord
  belongs_to :user

  validates_presence_of :firstname, :surname, :birth_date
end
