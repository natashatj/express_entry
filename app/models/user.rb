class User < ApplicationRecord
  has_secure_password

  has_many :assessments

  validates :email, presence: true
  validates :password, length: { in: 6..20 }, on: :create
end
