class Image < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :foreign_key => "photo_id",
             :dependent => :destroy

  belongs_to :posting_user,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  # Validations

end
