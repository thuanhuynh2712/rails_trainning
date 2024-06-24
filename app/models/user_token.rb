class UserToken < ApplicationRecord
  # https://stackoverflow.com/questions/38983666/validation-failed-class-must-exist
  belongs_to :user, optional: true
end
