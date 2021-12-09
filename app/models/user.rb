class User < ApplicationRecord
  has_secure_password

  has_one :personal

  has_many :credentials
  has_many :roles, through: :credentials

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true

  has_many :teacher_bindings

  scope :exists_by_email, ->(email) { exists?(email) }
end
