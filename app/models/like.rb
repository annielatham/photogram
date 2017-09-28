class Like < ApplicationRecord
  # Direct associations

  belongs_to :liking_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
