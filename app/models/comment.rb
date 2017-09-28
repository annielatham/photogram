class Comment < ApplicationRecord
  # Direct associations

  belongs_to :commenting_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
