class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true # check email is only - if taken - do not pass
end