class Job < ApplicationRecord
  # define relationship
  belongs_to :created_by, class_name: 'User'
  # end define relationship

  enum status: { draft: 2, publish: 1 }
end
