class Comment < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Image",
             :counter_cache => true

  belongs_to :commenting_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
