class Image < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "photo_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "photo_id",
             :dependent => :destroy

  belongs_to :posting_user,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  has_many   :commenting_users,
             :through => :comments,
             :source => :commenting_user

  # Validations

end
