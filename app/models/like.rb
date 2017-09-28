class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Image",
             :counter_cache => true

  belongs_to :liking_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
