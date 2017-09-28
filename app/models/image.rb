class Image < ApplicationRecord
  # Direct associations

  belongs_to :posting_user,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  # Validations

end
