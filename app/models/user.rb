class User < ApplicationRecord
  has_secure_password

  # define relationship
  has_many :jobs
  # end define relationship

  validates :email, presence: true, uniqueness: true # check email is only - if taken - do not pass
end